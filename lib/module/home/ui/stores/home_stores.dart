import 'package:flutter/cupertino.dart';
import 'package:flutter_application/module/home/domain/erros/home_erros.dart';
import 'package:flutter_application/module/home/domain/states/home_state.dart';
import 'package:flutter_application/module/home/domain/usecases/logincase.dart';
import 'package:flutter_application/module/home/domain/usecases/register_validators.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_stores.g.dart';

// ignore: library_private_types_in_public_api
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final _loginValidator = Modular.get<ILoginValidator>();
  final _validator = Modular.get<IValidator>();

  final controllerEmail = TextEditingController();
  final controllerPassword = TextEditingController();

  @observable
  HomeState homeState = LoginPageState();

  @observable
  bool isWidgetLogin = true;

  @observable
  bool isObscure = true;

  @observable
  bool validator = false;

  @action
  turnRegister() {
    homeState = RegisterPageState();
  }

  @action
  turnLogin() {
    homeState = LoginPageState();
  }

  @action
  turnLogged() {
    homeState = LoadingHomeState(
        id: _loginValidator.getUserId(email: controllerEmail.text));
    try {
      validator = _loginValidator.validateLoginCredentials(
          email: controllerEmail.text, password: controllerPassword.text);
    } on HomeErrorValidatorController catch (e) {
      // ignore: avoid_print
      print(e);
      homeState = LoginPageState();
    }
    final boolean = validator;
    if (boolean == true) {
      homeState = LoggedInState();
    } else {
      homeState = LoginPageState();
    }
  }

  @action
  makeVisible() {
    isObscure = !isObscure;
  }

  @action
  String? validatePassword(String? value) {
    return _validator.validatePassword(value);
  }

  @action
  String? validateEmail(String? value) {
    return _validator.validateEmail(value);
  }
}
