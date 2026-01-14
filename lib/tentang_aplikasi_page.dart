import 'package:flutter/material.dart';

class TentangAplikasiPage extends StatelessWidget {
  const TentangAplikasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF121212),
      appBar: AppBar(
        title: const Text('Tentang Aplikasi'),
        backgroundColor: const Color(0xFF161616),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Smart Wallet',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              'Smart Wallet merupakan aplikasi yang menggabungkan layanan dompet digital, '
              'investasi saham & crypto, serta fitur alokasi dana otomatis untuk perencanaan keuangan.',
              style: TextStyle(color: Colors.white70),
            ),
            const SizedBox(height: 20),
            const Text(
              'Dikembangkan oleh:',
              style: TextStyle(color: Colors.white54),
            ),
            const SizedBox(height: 12),

            // ===== LIST PENGEMBANG =====
            SizedBox(
              height: 120, // tinggi area developer
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  _DeveloperItem(imagePath: 'assets/images/indra.jpg', name: 'Indra Ansyari'),
                  _DeveloperItem(imagePath: 'assets/images/zaki.jpg', name: 'M. Zaki Raihan'),
                  _DeveloperItem(imagePath: 'assets/images/luthfi.jpg', name: 'M. Luthfi'),
                  _DeveloperItem(imagePath: 'assets/images/flora.jpg', name: 'Winona Flora S'),
                ],
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              'Versi Aplikasi: 1.0.0',
              style: TextStyle(color: Colors.white54),
            ),
            const Spacer(),
            const Text(
              '© 2026 Smart Wallet\nAll rights reserved.',
              style: TextStyle(color: Colors.white38, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}

class _DeveloperItem extends StatelessWidget {
  final String imagePath;
  final String name;

  const _DeveloperItem({Key? key, required this.imagePath, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: AssetImage(imagePath),
          ),
          const SizedBox(height: 8),
          Text(
            name,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}