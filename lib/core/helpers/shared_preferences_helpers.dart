import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesHelpers {
  Future<void> setStringData({
    required String key,
    required String text,
  }) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, text);
  }

  Future<void> setIntData({required String key, required int id}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(key, id);
  }

  Future<void> setBoolData({required String key, required bool value}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(key, value);
  }

  Future<String?> getStringData({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(key);
  }

  Future<int?> getIntData({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt(key);
  }

  Future<bool?> getBoolData({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(key);
  }

  Future<void> removeSingleKey({required String key}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(key);
  }

  Future<void> clearAllPref() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }
}
