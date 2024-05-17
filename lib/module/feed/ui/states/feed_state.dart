import 'package:flutter_application/module/feed/domain/entities/feed_entities.dart';
import 'package:flutter_application/module/feed/domain/errors/feed_error.dart';

abstract class FeedState {}

class FeedStateErro implements FeedState {
  final ErroState erroState;

  FeedStateErro(this.erroState);
}

class SucessState implements FeedState {
  final List<Post>? postList;

  SucessState(this.postList);
}

class LoadingState implements FeedState {}

class InicialState implements FeedState {}

class EmptyState implements FeedState {}
