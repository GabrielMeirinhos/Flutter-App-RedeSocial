import 'package:flutter/cupertino.dart';
import 'package:flutter_application/src/home/domain/states/home_state.dart';
import 'package:flutter_application/src/home/domain/usecases/logincase.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'home_stores.g.dart';

// ignore: library_private_types_in_public_api
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final loginValidator = Modular.get<ILoginValidator>();
  final controllerEmail = Modular.get<TextEditingController>();
  final controllerPassword = Modular.get<TextEditingController>();

  @observable
  HomeState homeState = LoginState();

  @observable
  bool isWidgetLogin = true;

  @observable
  bool isObscure = true;

  @observable
  bool validator = false;

  @action
  turnRegister() {
    homeState = RegisterState();
  }

  @action
  turnLogin() {
    homeState = LoginState();
  }

  @action
  turnLogged() {
    homeState = LoadingHomeState();
    final boolean = validator;
    if (boolean == true) {
      homeState = LoggedInState();
    } else {
      homeState = LoginState();
    }
  }

  @action
  makeVisible() {
    isObscure = !isObscure;
  }
}
