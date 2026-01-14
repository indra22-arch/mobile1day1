import 'package:flutter/material.dart';
import 'login.dart';
import 'tentang_aplikasi_page.dart';

class AkunPage extends StatelessWidget {
  const AkunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Akun'),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _profileCard(),
          const SizedBox(height: 24),

          _menuItem(
            icon: Icons.person_outline,
            title: 'Profil Akun',
            subtitle: 'Data akun terdaftar',
            onTap: () {},
          ),

          _menuItem(
            icon: Icons.settings_outlined,
            title: 'Pengaturan',
            subtitle: 'Keamanan & notifikasi',
            onTap: () {},
          ),

          _menuItem(
            icon: Icons.info_outline,
            title: 'Tentang Aplikasi',
            subtitle: 'Informasi & credit aplikasi',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const TentangAplikasiPage()),
              );
            },
          ),

          const SizedBox(height: 12),

          _menuItem(
            icon: Icons.logout,
            title: 'Keluar',
            subtitle: 'Logout dari aplikasi',
            color: Colors.redAccent,
            onTap: () => _showLogoutDialog(context),
          ),
        ],
      ),
    );
  }

  // ================= PROFIL CARD =================
  Widget _profileCard() {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xFF161616),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          const CircleAvatar(
            radius: 28,
            backgroundColor: Color(0xFFD4AF37),
            child: Icon(Icons.person, color: Colors.black),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Indra Ansyari',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 4),
              Text(
                'indraansyari@email.com',
                style: TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // ================= MENU ITEM =================
  Widget _menuItem({
    required IconData icon,
    required String title,
    required String subtitle,
    Color color = Colors.white,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(title, style: TextStyle(color: color)),
      subtitle: Text(subtitle, style: const TextStyle(color: Colors.white54)),
      trailing: const Icon(Icons.chevron_right, color: Colors.white38),
      onTap: onTap,
    );
  }

  // ================= LOGOUT =================
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Keluar'),
        content: const Text('Yakin ingin keluar dari akun?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Batal'),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(builder: (_) => const LoginPage()),
                (route) => false,
              );
            },
            child: const Text('Keluar', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}