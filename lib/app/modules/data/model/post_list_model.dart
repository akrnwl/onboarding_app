import 'package:infoteam_app/app/modules/data/model/post_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list_model.freezed.dart';
part 'post_list_model.g.dart';

@freezed
abstract class PostListModel with _$PostListModel {
  const factory PostListModel({
    required int count,
    required List<PostModel> list,
  }) = _PostListModel;

  factory PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);
}
