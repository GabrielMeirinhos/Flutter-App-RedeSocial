import 'package:flutter/material.dart';
import 'package:flutter_application/core/data/localdata/local_data.dart';
import 'package:flutter_application/core/domain/configs/theme_mode.dart';
import 'package:flutter_application/core/domain/states/states.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'package:mobx/mobx.dart';

part 'core_stores.g.dart';

// ignore: library_private_types_in_public_api
class CoreStores = _CoreStores with _$CoreStores;

abstract class _CoreStores with Store {
  PageTheme _configs = Modular.get<PageTheme>();

  @observable
  Future<bool> theme = LocalDate.getThemeMode();

  @observable
  ThemeState? getStateTheme;

  @observable
  ThemeData? themeDataStores;

  @action
  Future<void> changeThemeStores() async {
    await _configs.getChangeTheme();
    getStateTheme = await LocalDate.getThemeMode() ? WhiteState() : DarkState();
    getThemeData();
  }

  @action
  void getThemeData() {
    if (getStateTheme is WhiteState) {
      print('object');
      themeDataStores = ThemeData.light();
    } else {
      themeDataStores = ThemeData.dark();
    }
  }
}
