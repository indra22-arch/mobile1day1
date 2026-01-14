import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

// Formatter untuk rupiah
final rupiah = NumberFormat.currency(
  locale: 'id_ID',
  symbol: 'Rp ',
  decimalDigits: 0,
);

class RupiahInputFormatter extends TextInputFormatter {
  final formatter = NumberFormat.decimalPattern('id_ID');

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.isEmpty) return newValue;

    final clean = newValue.text.replaceAll(RegExp(r'[^0-9]'), '');
    final value = int.parse(clean);
    final text = formatter.format(value);

    return TextEditingValue(
      text: text,
      selection: TextSelection.collapsed(offset: text.length),
    );
  }
}