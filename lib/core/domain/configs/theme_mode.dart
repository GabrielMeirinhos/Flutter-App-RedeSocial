import 'package:flutter_application/core/data/localdata/local_data.dart';

class PageTheme {
  Future<void> getChangeTheme() async {
    bool currentMode = await LocalDate.getThemeMode();
    bool newMode = !currentMode;
    await LocalDate.setThemeMode(mode: newMode);
  }
}
// 