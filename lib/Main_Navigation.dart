import 'package:flutter/material.dart';
import 'home_page.dart';
import 'mutasi_page.dart';
import 'autosplit_page.dart';
import 'akun_page.dart';
import 'qris_page.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int index = 0;

  late final List<Widget> pages;

  @override
  void initState() {
    super.initState();
    pages = [
      const HomePage(),
      const MutasiPage(),
      const QrisPage(),
      const AutoSplitPage(),
      const AkunPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (i) => setState(() => index = i),
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFF0E0E0E),
        selectedItemColor: const Color(0xFFD4AF37),
        unselectedItemColor: Colors.white54,
        items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Beranda'),
          const BottomNavigationBarItem(icon: Icon(Icons.history), label: 'Riwayat'),
          BottomNavigationBarItem(
            icon: Container(
              width: 56,
              height: 56,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color(0xFFD4AF37),
              ),
              child: const Icon(Icons.qr_code_scanner, size: 30, color: Colors.black),
            ),
            label: '',
          ),
          const BottomNavigationBarItem(icon: Icon(Icons.calculate), label: 'Auto Split'),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Akun'),
        ],
      ),
    );
  }
}