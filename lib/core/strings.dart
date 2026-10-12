/// Temporary English string constants.
/// Every user-visible string lives here — no hard-coded text in widgets.
/// Replace with AppLocalizations in task 1.6.
abstract final class AppStrings {
  // App
  static const String appName = 'ShopLedger';

  // Login screen
  static const String loginTitle = 'Login';
  static const String usernameLabel = 'Username';
  static const String passwordLabel = 'Password';
  static const String loginButton = 'Login';
  static const String invalidCredentials = 'Invalid username or password';
  static const String fieldRequired = 'This field is required';

  // First-run / change password screen
  static const String setPasswordTitle = 'Set Owner Password';
  static const String setPasswordSubtitle =
      'Welcome! Please set a password for the owner account to continue.';
  static const String newPasswordLabel = 'New Password';
  static const String confirmPasswordLabel = 'Confirm Password';
  static const String setPasswordButton = 'Set Password';
  static const String passwordTooShort = 'Password must be at least 6 characters';
  static const String passwordsDoNotMatch = 'Passwords do not match';

  // Generic
  static const String errorUnexpected = 'An unexpected error occurred';
}
