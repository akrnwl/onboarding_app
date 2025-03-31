// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_list_board_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PostListBoardModel _$PostListBoardModelFromJson(Map<String, dynamic> json) =>
    _PostListBoardModel(
      id: json['id'] as String,
      title: json['title'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      creator: UserModel.fromJson(json['creator'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PostListBoardModelToJson(_PostListBoardModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'createdAt': instance.createdAt.toIso8601String(),
      'creator': instance.creator,
    };
