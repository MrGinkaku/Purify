import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '/Access/loginpage.dart'; // Pastikan ini mengimpor file tempat LoginPage berada
import '/Profile/screens/profile_detail_screen.dart';
import '/Profile/screens/payment_methods_screen.dart';
import '/Profile/screens/counseling_history_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  void _logout(BuildContext context) async {
    await FirebaseAuth.instance.signOut();
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const LoginPage()),
      (Route<dynamic> route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF007BFF), // Blue color
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Close the screen
          },
          icon: const Icon(Icons.close),
        ),
        title: const Text(''), // No title
      ),
      body: SingleChildScrollView( // Add SingleChildScrollView for scrolling
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  // User Image
                  Container(
                    height: 100,
                    width: 100,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage('assets/profile_image.png'), // Replace with your actual image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Hello,',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Arya Ashari',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 30),
                  // Menu Items
                  _buildMenuItem(context, 'Profile', Icons.person, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ProfileDetailsScreen()),
                    );
                  }),
                  _buildMenuItem(context, 'Method Payment', Icons.payment, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const PaymentMethodsScreen()),
                    );
                  }),
                  _buildMenuItem(context, 'Counseling History', Icons.history, () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const CounselingHistoryScreen()),
                    );
                  }),
                  _buildMenuItem(context, 'Appointment', Icons.calendar_today, () {
                    // Handle tap on 'Appointment' (optional)
                  }),
                  _buildMenuItem(context, 'Saved Article', Icons.bookmark, () {
                    // Handle tap on 'Saved Article' (optional)
                  }),
                  const SizedBox(height: 30),
                  // Log Out Button
                  Center(
                    child: ElevatedButton(
                      onPressed: () => _logout(context), // Panggil fungsi logout di sini
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                        foregroundColor: const Color(0xFF007BFF),
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        textStyle: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      child: const Text('Log out'),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, String title, IconData icon, VoidCallback onTap) {
    return ListTile(
      leading: Icon(icon), // Remove color parameter
      title: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.black, // Set text color to black
        ),
      ),
      onTap: onTap,
    );
  }
}
