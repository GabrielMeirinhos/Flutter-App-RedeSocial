import 'package:flutter_application/core/data/dio/client_dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  @override
  void binds(Injector i) {
    i.addInstance<IDioClient>(DioClient());
    super.binds(i);
  }
}
