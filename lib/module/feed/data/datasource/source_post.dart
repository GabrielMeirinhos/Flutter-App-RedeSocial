import 'package:flutter_application/shared/service/dio/client_dio.dart';
import 'package:flutter_application/module/feed/data/errors/erros_post.dart';
import 'package:flutter_modular/flutter_modular.dart';

abstract class IPostSource {
  Future<List<dynamic>> getPostData();
}

class PostSource implements IPostSource {
  final client = Modular.get<IDioClient>();

  PostSource();

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
