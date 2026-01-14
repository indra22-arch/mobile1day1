import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'utils/formatter.dart';

class AutoSplitPage extends StatefulWidget {
  const AutoSplitPage({super.key});

  @override
  State<AutoSplitPage> createState() => _AutoSplitPageState();
}

class _AutoSplitPageState extends State<AutoSplitPage> {
  final saldoC = TextEditingController();
  final kebutuhanC = TextEditingController();

  double sisa = 0, darurat = 0, tabungan = 0, investasi = 0, uangDingin = 0;

  void hitung() {
    final saldo = double.tryParse(saldoC.text.replaceAll('.', '')) ?? 0;
    final kebutuhan = double.tryParse(kebutuhanC.text.replaceAll('.', '')) ?? 0;

    if (saldo <= 0 || kebutuhan <= 0 || kebutuhan >= saldo) return;

    final s = saldo - kebutuhan;

    setState(() {
      sisa = s;
      darurat = s * 0.20;
      tabungan = s * 0.25;
      investasi = s * 0.40;
      uangDingin = s * 0.15;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto Split Dana')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          _input('Total Saldo', saldoC),
          _input('Kebutuhan Pokok', kebutuhanC),
          ElevatedButton(onPressed: hitung, child: const Text('Hitung')),
          const SizedBox(height: 20),
          if (sisa > 0) ...[
            _card('Dana Darurat', darurat),
            _card('Tabungan', tabungan),
            _card('Investasi', investasi),
            _card('Uang Dingin', uangDingin),
          ]
        ],
      ),
    );
  }

  Widget _input(String label, TextEditingController c) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: TextField(
        controller: c,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          RupiahInputFormatter(),
        ],
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
        ),
      ),
    );
  }

  Widget _card(String title, double value) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: const Color(0xFF161616),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title),
          Text(
            rupiah.format(value),
            style: const TextStyle(color: Color(0xFFD4AF37), fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}