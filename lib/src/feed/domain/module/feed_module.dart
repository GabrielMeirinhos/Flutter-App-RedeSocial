import 'package:flutter_application/src/feed/data/datasource/source_post.dart';
import 'package:flutter_application/src/feed/data/repositories/post_repository_impl.dart';
import 'package:flutter_application/src/feed/domain/repositories/feed_repositore.dart';
import 'package:flutter_application/src/feed/domain/usecases/get_post.dart';
import 'package:flutter_application/src/feed/ui/feed_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FeedModule extends Module {
  @override
  void binds(Injector i) {
    i.add<PostSource>(PostSource.new);
    i.add<IFeedRepository>(PostRepositoryImpl.new);
    i.add(GetPostUseCase.new);
    super.binds(i);
  }

  @override
  void routes(r) {
    r.child('/', child: (context) => const FeedPage());
  }
}
