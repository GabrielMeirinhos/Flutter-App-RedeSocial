import 'package:flutter_application/src/feed/domain/entities/feed_entities.dart';

abstract class IFeedRepository {
  Future<List<Post>> getPost();
}
