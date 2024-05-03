import 'package:flutter/cupertino.dart';
import 'package:flutter_application/src/feed/module/feed_module.dart';
import 'package:flutter_application/src/home/data/user_model/users_model.dart';
import 'package:flutter_application/src/home/domain/entities/home_model.dart';
import 'package:flutter_application/src/home/domain/stores/home_stores.dart';
import 'package:flutter_application/src/home/domain/usecases/logincase.dart';
import 'package:flutter_application/src/home/ui/home_page.dart';
import 'package:flutter_application/src/home/domain/usecases/register_validators.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  @override
  void binds(i) {
    i.addSingleton(HomeStore.new);
    i.addSingleton<IValidator>(Validator.new);
    i.addSingleton<User>(UserModel.new);
    i.addSingleton<ILoginValidator>(LoginValidator.new);
    i.add(TextEditingController.new);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const HomePage());
    r.module('/feed', module: FeedModule());
  }
}
