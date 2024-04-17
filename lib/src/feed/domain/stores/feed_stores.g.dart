// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feed_stores.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$FeedStore on _FeedStore, Store {
  late final _$listStateAtom =
      Atom(name: '_FeedStore.listState', context: context);

  @override
  List<Post> get listState {
    _$listStateAtom.reportRead();
    return super.listState;
  }

  @override
  set listState(List<Post> value) {
    _$listStateAtom.reportWrite(value, super.listState, () {
      super.listState = value;
    });
  }

  late final _$isLoadingAtom =
      Atom(name: '_FeedStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$getPostAsyncAction =
      AsyncAction('_FeedStore.getPost', context: context);

  @override
  Future<dynamic> getPost() {
    return _$getPostAsyncAction.run(() => super.getPost());
  }

  @override
  String toString() {
    return '''
listState: ${listState},
isLoading: ${isLoading}
    ''';
  }
}
