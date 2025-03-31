import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infoteam_app/app/modules/data/model/user_model.dart';

part 'post_list_model.freezed.dart';
part 'post_list_model.g.dart';



@freezed
abstract class PostListModel with _$PostListModel{
  const factory PostListModel({
    required String id,
    required String title,
    required String body,
    required List<String> tags,
    //required BoardModel board ,
    required DateTime createdAt,
    required UserModel createdBy,
    //required ImageModel images,
  }) = _PostListModel;

  factory PostListModel.fromJson(Map<String, dynamic> json) =>
        _$PostListModelFromJson(json);
}