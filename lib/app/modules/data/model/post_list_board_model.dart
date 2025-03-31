import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infoteam_app/app/modules/data/model/user_model.dart';
part 'post_list_board_model.freezed.dart';
part 'post_list_board_model.g.dart';

@freezed
abstract class PostListBoardModel with _$PostListBoardModel{
  const factory PostListBoardModel({
    required String id,
    required String title,
    required DateTime createdAt,
    required UserModel creator,
  }) = _PostListBoardModel;

  factory PostListBoardModel.fromJson(Map<String, dynamic> json) =>
        _$PostListBoardModelFromJson(json);
}