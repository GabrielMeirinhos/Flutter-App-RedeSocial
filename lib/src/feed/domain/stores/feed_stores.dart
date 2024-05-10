import 'package:flutter_application/src/feed/domain/entities/feed_entities.dart';
import 'package:flutter_application/src/feed/domain/errors/feed_error.dart';
import 'package:flutter_application/src/feed/domain/states/feed_state.dart';
import 'package:flutter_application/src/feed/domain/usecases/get_post.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';

part 'feed_stores.g.dart';

// ignore: library_private_types_in_public_api
class FeedStore = _FeedStore with _$FeedStore;

abstract class _FeedStore with Store {
  final _getPostUseCase = Modular.get<GetPostUseCase>();

  @observable
  FeedState feedState = InicialState();

  @observable
  List<Post> listPost = ObservableList<Post>();

  @observable
  @action
  Future<void> getPost() async {
    feedState = LoadingState();
    try {
      listPost = await _getPostUseCase.getPostUseCase();
      if (listPost.isEmpty) {
        feedState = EmptyState();
      } else {
        feedState = SucessState(listPost);
      }
    } on ErroState catch (e) {
      feedState = FeedStateErro(e);
    }
  }
}
