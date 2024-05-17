// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'model_post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ModelPost _$ModelPostFromJson(Map<String, dynamic> json) => ModelPost(
      id: json['id'] as int,
      title: json['title'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$ModelPostToJson(ModelPost instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'url': instance.url,
    };
