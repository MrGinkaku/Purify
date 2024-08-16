import 'package:flutter/material.dart';
import '/Profile/screens/profile_detail_screen.dart';
import '/Profile/screens/payment_methods_screen.dart';
import '/Profile/screens/counseling_history_screen.dart';

class ProfilesScreen extends StatelessWidget {
  const ProfilesScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.secondary,
        title: Text(title),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Navigasi ke layar profil detail
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ProfileDetailsScreen()),
              );
            },
          ),
        ],
      ),
      body: const Center(
        child: ProfileContent(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigasi ke layar edit profil
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProfileDetailsScreen()),
          );
        },
        tooltip: 'Edit Profile',
        child: const Icon(Icons.edit),
      ),
    );
  }
}

class ProfileContent extends StatefulWidget {
  const ProfileContent({super.key});

  @override
  _ProfileContentState createState() => _ProfileContentState();
}

class _ProfileContentState extends State<ProfileContent> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text(
          'You have pushed the button this many times:',
        ),
        Text(
          '$_counter',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        ElevatedButton(
          onPressed: () {
            // Navigasi ke layar metode pembayaran
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const PaymentMethodsScreen()),
            );
          },
          child: const Text('Payment Methods'),
        ),
        ElevatedButton(
          onPressed: () {
            // Navigasi ke layar riwayat konseling
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CounselingHistoryScreen()),
            );
          },
          child: const Text('Counseling History'),
        ),
      ],
    );
  }
}
