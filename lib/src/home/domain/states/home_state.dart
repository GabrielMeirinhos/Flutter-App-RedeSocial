abstract class HomeState {}

class LoginPageState implements HomeState {}

class RegisterPageState implements HomeState {}

class LoadingHomeState implements HomeState {
  final int id;

  LoadingHomeState({required this.id});
}

class LoggedInState implements HomeState {}
