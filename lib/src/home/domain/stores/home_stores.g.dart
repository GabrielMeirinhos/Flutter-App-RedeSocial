// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeStore on _HomeStore, Store {
  late final _$homeStateAtom =
      Atom(name: '_HomeStore.homeState', context: context);

  @override
  HomeState get homeState {
    _$homeStateAtom.reportRead();
    return super.homeState;
  }

  @override
  set homeState(HomeState value) {
    _$homeStateAtom.reportWrite(value, super.homeState, () {
      super.homeState = value;
    });
  }

  late final _$isWidgetLoginAtom =
      Atom(name: '_HomeStore.isWidgetLogin', context: context);

  @override
  bool get isWidgetLogin {
    _$isWidgetLoginAtom.reportRead();
    return super.isWidgetLogin;
  }

  @override
  set isWidgetLogin(bool value) {
    _$isWidgetLoginAtom.reportWrite(value, super.isWidgetLogin, () {
      super.isWidgetLogin = value;
    });
  }

  late final _$isObscureAtom =
      Atom(name: '_HomeStore.isObscure', context: context);

  @override
  bool get isObscure {
    _$isObscureAtom.reportRead();
    return super.isObscure;
  }

  @override
  set isObscure(bool value) {
    _$isObscureAtom.reportWrite(value, super.isObscure, () {
      super.isObscure = value;
    });
  }

  late final _$validatorAtom =
      Atom(name: '_HomeStore.validator', context: context);

  @override
  bool get validator {
    _$validatorAtom.reportRead();
    return super.validator;
  }

  @override
  set validator(bool value) {
    _$validatorAtom.reportWrite(value, super.validator, () {
      super.validator = value;
    });
  }

  late final _$_HomeStoreActionController =
      ActionController(name: '_HomeStore', context: context);

  @override
  dynamic turnRegister() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.turnRegister');
    try {
      return super.turnRegister();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic turnLogin() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.turnLogin');
    try {
      return super.turnLogin();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic turnLogged() {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.turnLogged');
    try {
      return super.turnLogged();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic makeVisible() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.makeVisible');
    try {
      return super.makeVisible();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validatePassword(String? value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.validatePassword');
    try {
      return super.validatePassword(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String? validateEmail(String? value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.validateEmail');
    try {
      return super.validateEmail(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
homeState: ${homeState},
isWidgetLogin: ${isWidgetLogin},
isObscure: ${isObscure},
validator: ${validator}
    ''';
  }
}
