import 'package:flutter/material.dart';
import '../models/chat/chat_message.dart';
import '../models/chat/doctor.dart';
import 'chat_detail.dart';
import 'package:auto_size_text/auto_size_text.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final List<Doctor> doctors = [
    Doctor(imageUrl: 'assets/doctor1.png'),
    Doctor(imageUrl: 'assets/doctor5.png'),
    Doctor(imageUrl: 'assets/doctor6.png'),
    Doctor(imageUrl: 'assets/doctor2.png'),
    Doctor(imageUrl: 'assets/doctor3.png'),
  ];

  final List<ChatMessage> messages = [
    ChatMessage(
        sender: 'Dr Rebbeka',
        message: 'You have to be more careful...',
        timestamp: DateTime.now()),
    ChatMessage(
        sender: 'Dr Rafsan Jani',
        message: 'See you soon.',
        timestamp: DateTime.now().subtract(const Duration(days: 1))),
    ChatMessage(
        sender: 'Dr B. Sick',
        message: 'I will make an appointment...',
        timestamp: DateTime.now().subtract(const Duration(days: 5))),
    ChatMessage(
        sender: 'Dr. Bruce Scott Hoffman, PHD',
        message: 'I will make an appointment...',
        timestamp: DateTime.now().subtract(const Duration(days: 7))),
    ChatMessage(
        sender: 'Dr. Kelly Geisler',
        message: "i'll do better",
        timestamp: DateTime.now().subtract(const Duration(days: 8))),
  ];

  void _navigateToChatDetail(Doctor doctor) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ChatDetailScreen(doctor: doctor),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        title: const AutoSizeText('Emergency consult with your recommended doctor', 
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold), 
          maxLines: 3, 
        ),
      ),
      body: Column(
        children: [
          // Doctors List
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: doctors.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => _navigateToChatDetail(doctors[index]),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundImage: AssetImage(doctors[index].imageUrl),
                        ),
                        const SizedBox(height: 4, width: 100),
                        // Text(
                        //   doctors[index].name,
                        //   style: TextStyle(fontSize: 12),
                        //   overflow: TextOverflow.ellipsis,
                        // ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          // Title 
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              'All Messages',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 26,
              ),
            ),
          ),
          // Messages List
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                  child: GestureDetector(
                    onTap: () => _navigateToChatDetail(doctors[index % doctors.length]),
                    child: Card(
                      color: const Color.fromARGB(255, 222, 236, 255),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13),
                      ),
                      elevation: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(12.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 35,
                              backgroundImage: AssetImage(doctors[index % doctors.length].imageUrl),
                            ),
                            const SizedBox(width: 15, height: 100),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    messages[index].sender,
                                    style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 10, width: 15),
                                  Text(
                                    messages[index].message,
                                    style: const TextStyle(fontSize: 16),
                                  ),
                                ],
                              ),
                            ),
                            Text(
                              '${messages[index].timestamp.day}/${messages[index].timestamp.month}',
                              style: const TextStyle(fontSize: 14, color: Colors.grey),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
