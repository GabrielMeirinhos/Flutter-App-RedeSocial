import 'package:flutter_application/src/home/domain/entities/home_model.dart';
// ignore: depend_on_referenced_packages
import 'package:json_annotation/json_annotation.dart';

part 'users_model.g.dart';

@JsonSerializable()
class UserModel extends User {
  UserModel(
      {required super.id,
      required super.name,
      required super.email,
      required super.password});

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
  get toList => null;

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
