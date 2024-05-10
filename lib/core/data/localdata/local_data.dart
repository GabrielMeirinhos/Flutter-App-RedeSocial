import 'package:flutter_application/core/data/localdata/shared_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalDate {
  static Future<void> setThemeMode({required bool mode}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool(PreferenceKeys.keyModel, mode);
  }

  static Future<bool> getThemeMode() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(PreferenceKeys.keyModel) ?? false;
  }
}
