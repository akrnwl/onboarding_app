import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/board_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/user_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_image_model.dart';

part 'post_list_model.freezed.dart';
part 'post_list_model.g.dart';



@freezed
abstract class PostListModel with _$PostListModel{
  const factory PostListModel({
    required String id,
    required String title,
    required String body,
    required List<String> tags,
    required BoardModel board ,
    required DateTime createdAt,
    required UserModel createdBy,
    required List<PostListImageModel> images,
  }) = _PostListModel;

  factory PostListModel.fromJson(Map<String, dynamic> json) =>
        _$PostListModelFromJson(json);
}