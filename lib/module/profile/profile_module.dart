import 'package:flutter_application/module/profile/ui/pages/profile.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProfileModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const ProfilePage());
  }
}
