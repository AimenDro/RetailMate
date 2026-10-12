import 'package:flutter/material.dart';
import 'ui/screens/home/home_screen.dart';
import 'ui/themes/app_theme.dart';

void main() {
  runApp(const ShopLedgerApp());
}

class ShopLedgerApp extends StatelessWidget {
  const ShopLedgerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ShopLedger',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light,
      darkTheme: AppTheme.dark,
      // Follow the system setting; can be made user-configurable later.
      themeMode: ThemeMode.system,
      home: const HomeScreen(),
    );
  }
}
