import 'package:flutter/material.dart';

class SectionLogo extends StatelessWidget {
  const SectionLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/logo.png', // Ganti dengan path logo yang benar
      width: 100,
      height: 100,
    );
  }
}
