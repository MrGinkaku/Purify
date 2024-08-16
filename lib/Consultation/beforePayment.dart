import 'package:flutter/material.dart';
import 'package:project_ppb/Consultation/payments/subscriibe_button.dart';

class BeforePayment extends StatefulWidget {
  const BeforePayment({Key? key}) : super(key: key);

  @override
  State<BeforePayment> createState() => _BeforePaymentState();
}

class _BeforePaymentState extends State<BeforePayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya (HomeScreen)
          },
        ),
        title: const Text(
          'Dr. Bruce Scott Hoffman',
          style: TextStyle(fontSize: 18),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.videocam),
            onPressed: () {
              // Implement video call functionality here
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Implement more button functionality here
            },
          ),
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('assets/doctor1.png'),
              ),
              const SizedBox(height: 10),
              const Text(
                'Dr. Bruce Scott Hoffman',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Psychiatrist',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[700],
                ),
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.star, color: Colors.orange),
                  const Icon(Icons.star, color: Colors.orange),
                  const Icon(Icons.star, color: Colors.orange),
                  const Icon(Icons.star, color: Colors.orange),
                  const Icon(Icons.star_half, color: Colors.orange),
                  const SizedBox(width: 10),
                  Text(
                    '220 Reviews • 6 Years Experience',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Container(
                color: Colors.grey[300],
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'You will get instant service from Dr. Bruce Scott Hoffman',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Consultation fee : IDR 45,000 / counseling',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Service : You will get instant consultation via video call',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 20),
                    SubscriibeButton(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
