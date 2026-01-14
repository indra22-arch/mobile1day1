import 'package:flutter/material.dart';

class QrisPage extends StatelessWidget {
  const QrisPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(Icons.qr_code_rounded, size: 220, color: Color(0xFFD4AF37)),
      ),
    );
  }
}