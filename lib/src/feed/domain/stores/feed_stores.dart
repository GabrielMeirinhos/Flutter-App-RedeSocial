import 'package:flutter_application/src/feed/domain/entities/feed_entities.dart';
import 'package:flutter_application/src/feed/domain/errors/feed_error.dart';
import 'package:flutter_application/src/feed/domain/usecases/get_post.dart';
import 'package:mobx/mobx.dart';

part 'feed_stores.g.dart';

class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore with Store {
  GetPostUseCase? _getPostUseCase;

  @observable
  List<Post> listState = ObservableList<Post>();

  @observable
  bool isLoading = false;

  @action
  Future getPost() async {
    isLoading = true;
    try {
      listState = await _getPostUseCase?.getPostUseCase();
    } on ErroState catch (e) {
      throw Exception(e);
    }
    isLoading = false;
  }
}
