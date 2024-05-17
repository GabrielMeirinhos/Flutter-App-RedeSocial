import 'package:flutter_application/module/feed/domain/entities/feed_entities.dart';

abstract class IFeedRepository {
  Future<List<Post>> getPost();
}
