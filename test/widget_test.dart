import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

// Gunakan relative path ke lib/
import '../lib/main_navigation.dart';
import '../lib/home_page.dart';
import '../lib/mutasi_page.dart';
import '../lib/autosplit_page.dart';
import '../lib/akun_page.dart';
import '../lib/qris_page.dart';

void main() {
  testWidgets('MainNavigation loads and navigates pages', (WidgetTester tester) async {
    // Build MainNavigation widget
    await tester.pumpWidget(
      const MaterialApp(
        home: MainNavigation(),
      ),
    );

    // Pastikan HomePage muncul pertama
    expect(find.byType(HomePage), findsOneWidget);

    // Tap BottomNavigationBar ke Riwayat
    await tester.tap(find.text('Riwayat'));
    await tester.pumpAndSettle();
    expect(find.byType(MutasiPage), findsOneWidget);

    // Tap ke QRIS
    await tester.tap(find.byIcon(Icons.qr_code_scanner));
    await tester.pumpAndSettle();
    expect(find.byType(QrisPage), findsOneWidget);

    // Tap ke Auto Split
    await tester.tap(find.text('Auto Split'));
    await tester.pumpAndSettle();
    expect(find.byType(AutoSplitPage), findsOneWidget);

    // Tap ke Akun
    await tester.tap(find.text('Akun'));
    await tester.pumpAndSettle();
    expect(find.byType(AkunPage), findsOneWidget);
  });
}
