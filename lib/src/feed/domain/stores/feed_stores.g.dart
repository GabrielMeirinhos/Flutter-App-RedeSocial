// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FeedStore on _FeedStore, Store {
  late final _$feedStateAtom =
      Atom(name: '_FeedStore.feedState', context: context);

  @override
  FeedState get feedState {
    _$feedStateAtom.reportRead();
    return super.feedState;
  }

  @override
  set feedState(FeedState value) {
    _$feedStateAtom.reportWrite(value, super.feedState, () {
      super.feedState = value;
    });
  }

  late final _$listPostAtom =
      Atom(name: '_FeedStore.listPost', context: context);

  @override
  List<Post> get listPost {
    _$listPostAtom.reportRead();
    return super.listPost;
  }

  @override
  set listPost(List<Post> value) {
    _$listPostAtom.reportWrite(value, super.listPost, () {
      super.listPost = value;
    });
  }

  late final _$getPostAsyncAction =
      AsyncAction('_FeedStore.getPost', context: context);

  @override
  Future<void> getPost() {
    return _$getPostAsyncAction.run(() => super.getPost());
  }

  @override
  String toString() {
    return '''
feedState: ${feedState},
listPost: ${listPost}
    ''';
  }
}
