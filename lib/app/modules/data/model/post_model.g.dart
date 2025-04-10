// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostModel _$PostModelFromJson(Map<String, dynamic> json) => _PostModel(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      board: BoardModel.fromJson(json['board'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['createdAt'] as String),
      createdBy: UserModel.fromJson(json['createdBy'] as Map<String, dynamic>),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => PostListImageModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PostModelToJson(_PostModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'tags': instance.tags,
      'board': instance.board,
      'createdAt': instance.createdAt.toIso8601String(),
      'createdBy': instance.createdBy,
      'images': instance.images,
    };
