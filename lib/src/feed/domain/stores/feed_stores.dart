import 'package:flutter_application/src/feed/domain/entities/feed_entities.dart';
import 'package:flutter_application/src/feed/domain/repositories/feed_repositore.dart';
import 'package:flutter_application/src/feed/domain/states/feed_state.dart';
import 'package:mobx/mobx.dart';

part 'feed_stores.g.dart';

class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore with Store {
  @observable
  IFeedRepository? repository;

  @observable
  List<Post> listState = ObservableList<Post>();

  @observable
  bool isLoading = false;

  _FeedStore();

  @action
  Future getPost() async {
    isLoading = true;
    try {
      final List<Post>? list = await repository?.getPost();
      if (list != null) {
        for (int i = 0; i < 15; i++) {
          list.add(list[i]);
        }
      }
    } on ErroState catch (e) {
      throw Exception(e);
    }
    isLoading = false;
  }
}
