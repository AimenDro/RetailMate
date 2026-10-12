import 'package:flutter/material.dart';

import 'data/app_database.dart';
import 'data/repositories/user_repository.dart';
import 'domain/auth/auth_service.dart';
import 'ui/screens/login/change_password_screen.dart';
import 'ui/screens/login/login_screen.dart';
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
      themeMode: ThemeMode.system,
      home: const _Startup(),
    );
  }
}

/// Decides which screen to show on startup:
/// - First run  → ChangePasswordScreen
/// - Returning  → LoginScreen
///
/// One [AppDatabase] instance is created here and passed down through
/// constructors.  No state-management package is used.
class _Startup extends StatefulWidget {
  const _Startup();

  @override
  State<_Startup> createState() => _StartupState();
}

class _StartupState extends State<_Startup> {
  // Single database instance for the lifetime of the app.
  final AppDatabase _db = AppDatabase();

  late final AuthService _authService;
  late final Future<bool> _firstRunFuture;

  @override
  void initState() {
    super.initState();
    _authService = AuthService(UserRepository(_db));
    _firstRunFuture = _authService.isFirstRun;
  }

  @override
  void dispose() {
    _db.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<bool>(
      future: _firstRunFuture,
      builder: (context, snapshot) {
        // While checking the DB, show a blank screen with the theme background.
        if (!snapshot.hasData) {
          return Scaffold(
            body: Center(
              child: CircularProgressIndicator(
                color: Theme.of(context).colorScheme.primary,
              ),
            ),
          );
        }

        final isFirstRun = snapshot.data!;

        if (isFirstRun) {
          return ChangePasswordScreen(authService: _authService);
        }

        return LoginScreen(authService: _authService);
      },
    );
  }
}
