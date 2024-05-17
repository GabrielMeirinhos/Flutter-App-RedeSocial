import 'package:flutter_application/module/home/domain/entities/home_model.dart';

abstract class IHomeRepository {
  List<User> getUsers();
}
