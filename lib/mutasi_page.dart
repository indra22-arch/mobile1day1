import 'package:flutter/material.dart';

class MutasiPage extends StatelessWidget {
  const MutasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Mutasi')),
      body: ListView(
        children: const [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.green,
              child: Icon(Icons.arrow_downward, color: Colors.white),
            ),
            title: Text('Uang Masuk'),
            trailing: Text('+ Rp 5.000.000', style: TextStyle(color: Colors.green)),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.red,
              child: Icon(Icons.arrow_upward, color: Colors.white),
            ),
            title: Text('Uang Keluar'),
            trailing: Text('- Rp 1.200.000', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}