import 'package:dio/dio.dart';
import 'package:flutter_application/src/home/domain/modules/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addInstance(Dio());
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
