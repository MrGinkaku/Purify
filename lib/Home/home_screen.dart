import 'package:flutter/material.dart';
import 'doctor_list.dart'; // Import the new screen
import '/Models/home/section_title.dart';
import '/Models/home/doctor_card1.dart';
import '/Models/home/article_card.dart';
import '/Models/home/service_card.dart';
import '/Models/home/section_logo.dart';

class HomeScreen extends StatelessWidget {
  final bool isSubscriber = false; // Ganti dengan status langganan pengguna
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                children: [
                  Expanded(
                    child: SectionTitle(
                        title: 'Consult with Your Preferred Doctor'),
                  ),
                  SectionLogo(),
                ],
              ),
              const SizedBox(height: 16.0),
              DoctorCards(isSubscriber: isSubscriber), // Berikan nilai isSubscriber
              const SizedBox(height: 24.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SectionTitle(title: 'Top Articles'),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DoctorListScreen(),
                        ),
                      );
                    },
                    child: const Text('Show more'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              const ArticleCard(
                title: 'Mental Health Has a Great Influence on Life',
                author: 'David Ephraim',
                readTime: '10 min read',
                publishedDate: '20 Nov',
                content:
                    'Mental health is important for an optimal and sustainable quality of life. Hear how powerful it can be.',
              ),
              const SizedBox(height: 16.0),
              const ArticleCard(
                title: "Don't take your mental health for granted!",
                author: 'Ari Aprilianto',
                readTime: '7 min read',
                publishedDate: '20 Nov',
                content:
                    'Prioritize your mental health, don’t ignore it. This is important for your overall well-being.',
              ),
              const SizedBox(height: 24.0),
              const SectionTitle(title: 'Find Your Consultation Services'),
              const SizedBox(height: 16.0),
              const ServiceCards(),
              const SizedBox(height: 24.0),
            ],
          ),
        ),
      ),
    );
  }
}
