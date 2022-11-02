import 'package:shared_preferences/shared_preferences.dart';

class shared_pref_class {
  write_data(String key, dynamic value) async {
    final prefs = await SharedPreferences.getInstance();
    if (value is String) {
      prefs.setString(key, value);
    } else if (value is int) {
      prefs.setInt(key, value);
    } else if (value is bool) {
      prefs.setBool(key, value);
    }
  }

  Future<dynamic> read_data(String key) async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.get(key);
  }
  deleteTheData(String key) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove(key);
  }

  clearTheData() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.clear();
  }
}
