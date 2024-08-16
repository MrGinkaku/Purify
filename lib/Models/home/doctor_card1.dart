import 'package:flutter/material.dart';
import 'package:project_ppb/Consultation/beforePayment.dart';
import 'package:project_ppb/Consultation/afterPayment.dart';

class DoctorCards extends StatelessWidget {
  final bool isSubscriber; // Tambahkan variabel isSubscriber
  const DoctorCards({Key? key, required this.isSubscriber}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildDoctorCard(imagePath: 'assets/doctor1.png', context: context),
        _buildDoctorCard(imagePath: 'assets/doctor2.png', context: context),
        _buildDoctorCard(imagePath: 'assets/doctor3.png', context: context),
        _buildDoctorCard(imagePath: 'assets/doctor4.png', context: context),
      ],
    );
  }

  Widget _buildDoctorCard({required String imagePath, required BuildContext context}) {
    return GestureDetector(
      onTap: () {
        if (isSubscriber) {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const BookingConsultation()));
        } else {
          Navigator.push(context, MaterialPageRoute(builder: (context) => const BeforePayment()));
        }
      },
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
