import 'package:flutter/material.dart';
import 'login.dart';

void main() {
  runApp(const SmartWalletApp());
}

class SmartWalletApp extends StatelessWidget {
  const SmartWalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: const Color(0xFF0E0E0E),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFFD4AF37),
          brightness: Brightness.dark,
        ),
      ),
      home: const LoginPage(),
    );
  }
}