import 'package:flutter/material.dart';

class CounselingHistoryScreen extends StatelessWidget {
  const CounselingHistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counseling History'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          CounselingHistoryItem(
            title: 'Dr. Bruce Scott Hoffman, PHD',
            subtitle: '5th Meeting',
            date: '19 May 2024',
            note: 'Chat: already very familiar.',
          ),
          CounselingHistoryItem(
            title: 'Dr. Bruce Scott Hoffman, PHD',
            subtitle: '4th Meeting',
            date: '12 May 2024',
            note: 'Video Call: familiar.',
          ),
          CounselingHistoryItem(
            title: 'Dr. Bruce Scott Hoffman, PHD',
            subtitle: '3rd Meeting',
            date: '29 April 2024',
            note: 'Video Call: experiencing stress to the point of being lazy about studying.',
          ),
          // Tambahkan item lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}

class CounselingHistoryItem extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final String note;

  const CounselingHistoryItem({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.note,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        title: Text(title),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(subtitle, style: const TextStyle(fontWeight: FontWeight.bold)),
            Text(date),
            const SizedBox(height: 5),
            Text('Note: $note'),
          ],
        ),
      ),
    );
  }
}
