import 'package:infoteam_app/app/modules/data/data_source/model/post_list_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
abstract class PostModel with _$PostModel{
  const factory PostModel({
    required int count,
    required List<PostListModel> list,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) =>
        _$PostModelFromJson(json);
}