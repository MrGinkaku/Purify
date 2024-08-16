import 'package:flutter/material.dart';

class ProfileMenuItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final bool highlighted;

  const ProfileMenuItem({
    super.key,
    required this.icon,
    required this.title,
    this.highlighted = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontWeight: highlighted ? FontWeight.bold : FontWeight.normal,
          fontStyle: highlighted ? FontStyle.italic : FontStyle.normal,
        ),
      ),
      onTap: () {
        // Tambahkan logika untuk navigasi ke halaman yang sesuai
      },
    );
  }
}
