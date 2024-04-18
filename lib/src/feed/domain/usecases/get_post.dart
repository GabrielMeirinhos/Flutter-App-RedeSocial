import 'package:flutter_application/src/feed/domain/entities/feed_entities.dart';
import 'package:flutter_application/src/feed/domain/repositories/feed_repositore.dart';

class GetPostUseCase {
  IFeedRepository? repository;

  final List listPost = [];

  GetPostUseCase();

  Future getPostUseCase() async {
    final List<Post>? list = await repository?.getPost();
    if (list != null) {
      for (int i = 0; i < 15; i++) {
        listPost.add(list[i]);
      }
    }
    return listPost;
  }
}
