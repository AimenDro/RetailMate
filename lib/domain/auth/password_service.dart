import 'dart:isolate';
import 'package:bcrypt/bcrypt.dart';

/// Password hashing and verification using bcrypt (jBCrypt port).
///
/// Both [hash] and [verify] run in a separate isolate via [Isolate.run]
/// so the UI thread is never blocked by the bcrypt work factor computation.
abstract final class PasswordService {
  /// Returns a bcrypt hash of [plainText].
  /// Safe to store directly in the database.
  static Future<String> hash(String plainText) =>
      Isolate.run(() => BCrypt.hashpw(plainText, BCrypt.gensalt()));

  /// Returns true if [plainText] matches [storedHash].
  static Future<bool> verify(String plainText, String storedHash) =>
      Isolate.run(() => BCrypt.checkpw(plainText, storedHash));
}
