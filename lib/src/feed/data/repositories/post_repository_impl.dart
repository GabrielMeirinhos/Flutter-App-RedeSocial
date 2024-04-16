import 'package:flutter_application/src/feed/data/datasource/source_post.dart';
import 'package:flutter_application/src/feed/data/errors/erros_post.dart';
import 'package:flutter_application/src/feed/data/models/model_post.dart';
import 'package:flutter_application/src/feed/domain/entities/feed_entities.dart';
import 'package:flutter_application/src/feed/domain/repositories/feed_repositore.dart';

class PostRepositoryImpl implements IFeedRepository {
  final IPostSource postSource;

  PostRepositoryImpl({required this.postSource});

  @override
  Future<List<Post>> getPost() async {
    try {
      final data = await postSource.getPostData();
      final List<ModelPost> modelPostList =
          data.map((map) => ModelPost.fromJson(map)).toList();
      return modelPostList;
    } on ErroRepository catch (e) {
      throw Exception(e);
    }
  }
}
