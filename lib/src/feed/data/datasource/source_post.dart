import 'package:flutter_application/core/data/dio/client_dio.dart';
import 'package:flutter_application/src/feed/data/errors/erros_post.dart';

abstract class IPostSource {
  Future<List<dynamic>> getPostData();
}

class PostSource implements IPostSource {
  final IDioClient client;

  PostSource({required this.client});

  @override
  Future<List<dynamic>> getPostData() async {
    try {
      final response =
          await client.get(url: 'https://jsonplaceholder.typicode.com/photos/');
      return response.data as List;
    } catch (e) {
      throw ErroSource();
    }
  }
}
