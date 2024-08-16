import 'package:flutter/material.dart';
import 'package:project_ppb/Consultation/beforePayment.dart';
import 'package:project_ppb/Consultation/afterPayment.dart';
import '../Models/home/doctor_card.dart'; // import file untuk DoctorCard widget

class DoctorListScreen extends StatelessWidget {
  DoctorListScreen({super.key});
  bool isSubscriber=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Psychiatrist'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Top Psychiatrist'),
            const SizedBox(height: 16.0),
            GestureDetector(
              onTap: (){
                isSubscriber ? Navigator.push(context, MaterialPageRoute(builder: (context)=> const BookingConsultation())) : Navigator.push(context, MaterialPageRoute(builder: (context)=> const BookingConsultation()));
              },
              child: DoctorCard(
                name: 'Dr. Bruce Scott Hoffman',
                specialty: 'Psychiatrist',
                reviews: '976 Reviews',
                experience: '15 Years Experience',
                imagePath: 'assets/doctor1.png',
                color: Colors.blue[200],
              ),
            ),
            const SizedBox(height: 8.0),
            DoctorCard(
              name: 'Alnetta Hooper, PsyD',
              specialty: 'Psychiatrist',
              reviews: '1100 Reviews',
              experience: '13 Years Experience',
              imagePath: 'assets/doctor2.png',
              color: Colors.blue[200],
            ),
            const SizedBox(height: 8.0),
            DoctorCard(
              name: 'Dr. Kelly Geisler',
              specialty: 'Psychiatrist',
              reviews: '765 Reviews',
              experience: '10 Years Experience',
              imagePath: 'assets/doctor3.png',
              color: Colors.blue[200],
            ),
            const SizedBox(height: 24.0),
            _buildSectionTitle('Recommend for you'),
            const SizedBox(height: 16.0),
            DoctorCard(
              name: 'Dr Rafsan Jani',
              specialty: 'Psychiatrist',
              reviews: '111 Reviews',
              experience: '3 Years Experience',
              imagePath: 'assets/doctor4.png',
              color: Colors.blue[200],
            ),
            const SizedBox(height: 8.0),
            DoctorCard(
              name: 'Dr B. Sick',
              specialty: 'Psychiatrist',
              reviews: '121 Reviews',
              experience: '4 Years Experience',
              imagePath: 'assets/doctor5.png',
              color: Colors.blue[200],
            ),
            const SizedBox(height: 8.0),
            DoctorCard(
              name: 'Dr Ronim',
              specialty: 'Psychiatry',
              reviews: '111 Reviews',
              experience: '4 Years Experience',
              imagePath: 'assets/doctor6.png',
              color: Colors.blue[200],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
