import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed // json 직렬화와 관련된 것. freezed를 통해 코드를 간결하게 짤 수 있다.
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String id,
    required String email,
    required String nickname,
    required DateTime createdAt,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
