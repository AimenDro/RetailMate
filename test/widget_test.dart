import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shop_ledger/ui/screens/home/home_screen.dart';
import 'package:shop_ledger/ui/themes/app_theme.dart';

void main() {
  // ShopLedgerApp now performs an async first-run DB check before showing
  // any screen, which requires a real file-based database and cannot be
  // tested with pumpWidget directly.
  //
  // This test exercises the HomeScreen widget in isolation using a
  // MaterialApp wrapper — no database involved.
  testWidgets('HomeScreen renders app name and subtitle', (tester) async {
    await tester.pumpWidget(
      MaterialApp(theme: AppTheme.light, home: const HomeScreen()),
    );

    expect(find.text('ShopLedger'), findsOneWidget);
    expect(find.text('Kirana POS'), findsOneWidget);
  });
}
