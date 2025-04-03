import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/user_model.dart';
part 'board_model.freezed.dart';
part 'board_model.g.dart';

@freezed
abstract class BoardModel with _$BoardModel {
  const factory BoardModel({
    required String id,
    required String title,
    required DateTime createdAt,
    required UserModel creator,
  }) = _BoardModel;

  factory BoardModel.fromJson(Map<String, dynamic> json) =>
      _$BoardModelFromJson(json);
}
