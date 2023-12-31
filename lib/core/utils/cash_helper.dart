import 'package:shared_preferences/shared_preferences.dart';

class CasheHelber {
  static late SharedPreferences sharedPreferences;
  static init() async {
    sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<bool> putBool(
      {required String key, required bool value}) async {
    return await sharedPreferences.setBool(key, value);
  }

  static dynamic getBool({required String key}) {
    return sharedPreferences.get(key);
  }

  static Future<dynamic> setDataShared(
      {required String key, required dynamic value}) async {
    if (value is bool) return await sharedPreferences.setBool(key, value);
    if (value is int) return await sharedPreferences.setInt(key, value);
    if (value is String) return await sharedPreferences.setString(key, value);
    return await sharedPreferences.setDouble(key, value);
  }

  static dynamic getDataShared({required String key}) {
    return sharedPreferences.get(key);
  }

  static Future<bool> removeData({required String key}) async {
    return await sharedPreferences.remove(key);
  }
}
