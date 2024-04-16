import 'package:flutter_application/src/feed/domain/entities/feed_entities.dart';

abstract class FeedState {}

class ErroState implements FeedState {
  final ErroState erroState;

  ErroState(this.erroState);
}

class ModelPostListState implements FeedState {
  final List<Post> postList;

  ModelPostListState(this.postList);
}
