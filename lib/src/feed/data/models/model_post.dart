import 'package:flutter_application/src/feed/domain/entities/feed_entities.dart';
import 'package:json_annotation/json_annotation.dart';

part 'model_post.g.dart';

@JsonSerializable()
class ModelPost extends Post {
  ModelPost({required super.id, required super.title, required super.url});

  //criação do factory
  factory ModelPost.fromJson(Map<String, dynamic> json) =>
      _$ModelPostFromJson(json);

  get toList => null;

  Map<String, dynamic> toJson() => _$ModelPostToJson(this);
}
