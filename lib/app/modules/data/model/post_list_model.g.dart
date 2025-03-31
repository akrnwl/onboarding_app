// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostListModel _$PostListModelFromJson(Map<String, dynamic> json) =>
    _PostListModel(
      id: json['id'] as String,
      title: json['title'] as String,
      body: json['body'] as String,
      tags: (json['tags'] as List<dynamic>).map((e) => e as String).toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      createdBy: UserModel.fromJson(json['createdBy'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostListModelToJson(_PostListModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'body': instance.body,
      'tags': instance.tags,
      'createdAt': instance.createdAt.toIso8601String(),
      'createdBy': instance.createdBy,
    };
