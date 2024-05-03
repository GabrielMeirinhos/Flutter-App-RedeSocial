import 'dart:convert';

import 'package:flutter_application/src/home/data/datasource/datasource.dart';
import 'package:flutter_application/src/home/data/repositories/home_repository_impl.dart';
import 'package:flutter_application/src/home/data/user_model/users_model.dart';
import 'package:flutter_application/src/home/domain/entities/home_model.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  List<User> getUsers() {
    List<dynamic> userMapList = jsonDecode(usersJson);
    final List<User> list =
        userMapList.map((map) => UserModel.fromJson(map)).toList();
    return list;
  }

  getUsers();
}
