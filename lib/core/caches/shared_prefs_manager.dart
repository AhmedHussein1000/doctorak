import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsManager {
  static SharedPreferences? _prefs;

  static Future<void> init() async {
    _prefs = await SharedPreferences.getInstance();
  }

  // Save data
  static Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    if (value is String) return await _prefs?.setString(key, value) ?? false;
    if (value is int) return await _prefs?.setInt(key, value) ?? false;
    if (value is bool) return await _prefs?.setBool(key, value) ?? false;
    if (value is double) return await _prefs?.setDouble(key, value) ?? false;
    if (value is List<String>) {
      return await _prefs?.setStringList(key, value) ?? false;
    }
    if (value is Map<String, dynamic>) {
      return await _prefs?.setString(key, json.encode(value)) ?? false;
    }
    return false;
  }

  // Get String
  static String? getString(String key) {
    return _prefs?.getString(key);
  }

  static bool? getBool(String key) {
    return _prefs?.getBool(key);
  }
}
