import 'package:flutter_application/module/feed/domain/entities/feed_entities.dart';
import 'package:flutter_application/module/feed/domain/repositories/feed_repositore.dart';

class GetPostUseCase {
  final IFeedRepository repository;

  GetPostUseCase(this.repository);

  Future<List<Post>> getPostUseCase() async {
    try {
      final List<Post> list = await repository.getPost();
      // Limita a lista de posts para conter no máximo 15 posts
      return list.take(15).toList();
    } catch (e) {
      // Trata qualquer erro ao buscar os posts
      // ignore: avoid_print
      print('Erro ao buscar posts: $e');
      return []; // Retorna uma lista vazia em caso de erro
    }
  }
}
