import 'package:flutter_application/src/home/domain/entities/home_model.dart';

class Users {
  List<User> users = [
    User(
      id: 1,
      name: 'Gabriel',
      email: 'gabriel@gmail.com',
      password: 'gabriel',
    ),
    User(
      id: 2,
      name: 'João',
      email: 'joao@gmail.com',
      password: 'joao',
    ),
    User(
      id: 3,
      name: 'Pedro',
      email: 'pedro@gmail.com',
      password: 'pedro',
    )
  ];

  List<User> getListUser() {
    return users;
  }
}
