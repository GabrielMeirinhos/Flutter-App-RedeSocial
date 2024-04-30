import 'package:flutter_application/core/data/dio/client_dio.dart';
import 'package:flutter_application/src/home/modules/home_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  void binds(i) {
    i.addInstance<IDioClient>(DioClient());
  }

  @override
  void routes(r) {
    r.module('/', module: HomeModule());
  }
}
