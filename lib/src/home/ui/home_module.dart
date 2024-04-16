import 'package:flutter_application/src/home/ui/home_page';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    // r.child('/register', child: (context) => const RegisterPage());
  }
}
