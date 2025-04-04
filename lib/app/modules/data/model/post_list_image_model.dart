import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_list_image_model.freezed.dart';
part 'post_list_image_model.g.dart';

@freezed
abstract class PostListImageModel with _$PostListImageModel {
  const factory PostListImageModel({
    required String image,
    required String id,
  }) = _PostListImageModel;

  factory PostListImageModel.fromJson(Map<String, dynamic> json) =>
      _$PostListImageModelFromJson(json);
}
