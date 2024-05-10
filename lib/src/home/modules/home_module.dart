import 'package:flutter_application/core/core_module/core_module.dart';
import 'package:flutter_application/src/feed/module/feed_module.dart';
import 'package:flutter_application/src/home/data/repositories/home_repository_impl.dart';
import 'package:flutter_application/src/home/domain/repositories/home_repository.dart';
import 'package:flutter_application/src/home/domain/stores/home_stores.dart';
import 'package:flutter_application/src/home/domain/usecases/logincase.dart';
import 'package:flutter_application/src/home/ui/home_page.dart';
import 'package:flutter_application/src/home/domain/usecases/register_validators.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];
  @override
  void binds(i) {
    i.add<IValidator>(Validator.new);
    i.add<IHomeRepository>(HomeRepositoryImpl.new);
    i.add<ILoginValidator>(LoginValidator.new);
    i.add(HomeStore.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.module('/feed', module: FeedModule());
  }
}
