import 'package:flutter_application/shared/service/dio/client_dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

class SharedModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add<IDioClient>(DioClient.new);

    super.binds(i);
  }
}
