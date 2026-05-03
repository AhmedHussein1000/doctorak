import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class FlutterSecureStorageManager {
  FlutterSecureStorageManager._();
  static FlutterSecureStorage? _flutterSecureStorage;

  // get instance
  static FlutterSecureStorage get _secureStorage {
    _flutterSecureStorage ??= const FlutterSecureStorage();
    return _flutterSecureStorage!;
  }

  static void setMockInstance(FlutterSecureStorage mockSecureStorage) {
    _flutterSecureStorage = mockSecureStorage;
  }

  /// Write String value
  static Future<void> write(String key, String value) async {
    await _secureStorage.write(key: key, value: value);
  }

  /// Read String value
  static Future<String?> read(String key) async {
    return await _secureStorage.read(key: key);
  }

  /// Delete specific key
  static Future<void> delete(String key) async {
    await _secureStorage.delete(key: key);
  }

  /// Delete all keys
  static Future<void> deleteAll() async {
    await _secureStorage.deleteAll();
  }
}
