// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'core_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CoreStores on _CoreStores, Store {
  late final _$themeAtom = Atom(name: '_CoreStores.theme', context: context);

  @override
  Future<bool> get theme {
    _$themeAtom.reportRead();
    return super.theme;
  }

  @override
  set theme(Future<bool> value) {
    _$themeAtom.reportWrite(value, super.theme, () {
      super.theme = value;
    });
  }

  late final _$getStateThemeAtom =
      Atom(name: '_CoreStores.getStateTheme', context: context);

  @override
  ThemeState? get getStateTheme {
    _$getStateThemeAtom.reportRead();
    return super.getStateTheme;
  }

  @override
  set getStateTheme(ThemeState? value) {
    _$getStateThemeAtom.reportWrite(value, super.getStateTheme, () {
      super.getStateTheme = value;
    });
  }

  late final _$themeDataStoresAtom =
      Atom(name: '_CoreStores.themeDataStores', context: context);

  @override
  ThemeData? get themeDataStores {
    _$themeDataStoresAtom.reportRead();
    return super.themeDataStores;
  }

  @override
  set themeDataStores(ThemeData? value) {
    _$themeDataStoresAtom.reportWrite(value, super.themeDataStores, () {
      super.themeDataStores = value;
    });
  }

  late final _$changeThemeStoresAsyncAction =
      AsyncAction('_CoreStores.changeThemeStores', context: context);

  @override
  Future<void> changeThemeStores() {
    return _$changeThemeStoresAsyncAction.run(() => super.changeThemeStores());
  }

  late final _$_CoreStoresActionController =
      ActionController(name: '_CoreStores', context: context);

  @override
  void getThemeData() {
    final _$actionInfo = _$_CoreStoresActionController.startAction(
        name: '_CoreStores.getThemeData');
    try {
      return super.getThemeData();
    } finally {
      _$_CoreStoresActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
theme: ${theme},
getStateTheme: ${getStateTheme},
themeDataStores: ${themeDataStores}
    ''';
  }
}
