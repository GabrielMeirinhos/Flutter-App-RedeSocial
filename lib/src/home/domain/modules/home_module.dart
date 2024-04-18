import 'package:flutter_application/src/feed/domain/module/feed_module.dart';
import 'package:flutter_application/src/home/ui/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void binds(i) {}

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.module('/feed', module: FeedModule());
  }
}
