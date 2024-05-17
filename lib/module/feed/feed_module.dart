import 'package:flutter_application/core/core_module/core_module.dart';
import 'package:flutter_application/module/feed/data/datasource/source_post.dart';
import 'package:flutter_application/module/feed/data/repositories/post_repository_impl.dart';
import 'package:flutter_application/module/feed/domain/repositories/feed_repositore.dart';
import 'package:flutter_application/module/feed/ui/stores/feed_stores.dart';
import 'package:flutter_application/module/feed/domain/usecases/get_post.dart';
import 'package:flutter_application/module/feed/ui/feed_page.dart';
import 'package:flutter_application/module/profile/profile_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedModule extends Module {
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  @override
  void binds(Injector i) {
    i.addSingleton<IPostSource>(PostSource.new);
    i.addSingleton<IFeedRepository>(PostRepositoryImpl.new);
    i.addSingleton(GetPostUseCase.new);
    i.addSingleton(FeedStore.new);
    super.binds(i);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const FeedPage());
    r.module('/profile', module: ProfileModule());
  }
}
