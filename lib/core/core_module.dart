import 'package:flutter_application/core/domain/configs/theme_mode.dart';
import 'package:flutter_application/core/domain/stores/core_stores.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CoreModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add(SharedPreferences.getInstance);
    i.addSingleton(PageTheme.new);
    i.addSingleton(CoreStores.new);

    super.binds(i);
  }
}
