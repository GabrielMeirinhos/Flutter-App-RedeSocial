import 'package:flutter_application/module/home/domain/entities/home_model.dart';
import 'package:flutter_application/module/home/domain/repositories/home_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class ILoginValidator {
  bool validateLoginCredentials(
      {required String email, required String password});
  int getUserId({required String email});
}

class LoginValidator implements ILoginValidator {
  final users = Modular.get<IHomeRepository>();

  List<User> userList = [];

  @override
  bool validateLoginCredentials(
      {required String email, required String password}) {
    bool loginValidator = false;
    userList = users.getUsers();
    for (final user in userList) {
      if (email == user.email && password == user.password) {
        loginValidator = true;
      }
    }
    return loginValidator;
  }

  @override
  int getUserId({required String email}) {
    int userId = -1;
    userList = users.getUsers();
    for (final user in userList) {
      if (email == user.email) {
        userId = user.id;
        break;
      }
    }
    return userId;
  }
}
