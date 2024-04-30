import 'package:flutter_application/src/home/domain/entities/home_model.dart';

abstract class UserRepository {
  Future<User?> getUserById(int userId);
}
