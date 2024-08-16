import 'package:flutter/material.dart';

class ServiceCards extends StatelessWidget {
  const ServiceCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        _buildServiceCard(iconData: Icons.chat, title: 'Chat Doctor'),
        _buildServiceCard(iconData: Icons.people_alt, title: 'Onsite'),
        _buildServiceCard(iconData: Icons.video_call, title: 'Video Call'),
      ],
    );
  }

  Widget _buildServiceCard({required IconData iconData, required String title}) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 1,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            size: 32,
            color: Colors.black,
          ),
          const SizedBox(height: 8.0),
          Text(
            title,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
