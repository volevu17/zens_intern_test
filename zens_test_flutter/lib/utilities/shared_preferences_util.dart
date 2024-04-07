import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  late final SharedPreferences _sharedPreferences;

  SharedPreferencesUtil() {
    _init();
  }

  void _init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  Future<String?> getString(String key) async {
    return _sharedPreferences.getString(key);
  }

  Future<bool> setString(String key, String value) async {
    return _sharedPreferences.setString(key, value);
  }

  Future<int?> getInt(String key) async {
    return _sharedPreferences.getInt(key);
  }

  Future<bool> setInt(String key, int value) async {
    return _sharedPreferences.setInt(key, value);
  }
}
