import 'package:flutter/material.dart';
import '../../Models/profile/info_card.dart';
import '../../Models/profile/recent_activity_car.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('assets/profile_image.png'), 
                ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Arya Ashari',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Profile',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20),
            GridView.count(
              crossAxisCount: 2,
              shrinkWrap: true,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 2,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                InfoCard(title: 'B+', subtitle: 'Blood Type'),
                InfoCard(title: '62 Kg', subtitle: 'Weight'),
                InfoCard(title: '158 cm', subtitle: 'Height'),
                InfoCard(title: '07/1998', subtitle: 'Birth Date'),
                InfoCard(title: 'Male', subtitle: 'Gender'),
                InfoCard(title: 'More+', subtitle: ''),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Recent Activities',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            RecentActivityCard(
              title: 'Booked an Appointment with Dr Rebbeka',
              onTap: () {
                // Implementasi tindakan ketika diklik
              },
            ),
          ],
        ),
      ),
    );
  }
}
