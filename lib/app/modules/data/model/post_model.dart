import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infoteam_app/app/modules/data/model/board_model.dart';
import 'package:infoteam_app/app/modules/data/model/user_model.dart';
import 'package:infoteam_app/app/modules/data/model/post_list_image_model.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
abstract class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String title,
    required String body,
    required List<String> tags,
    required BoardModel board,
    required DateTime createdAt,
    required UserModel createdBy,
    List<PostListImageModel>? images,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
