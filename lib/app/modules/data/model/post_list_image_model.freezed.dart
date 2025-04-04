// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_image_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostListImageModel {
  String get image;
  String get id;

  /// Create a copy of PostListImageModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostListImageModelCopyWith<PostListImageModel> get copyWith =>
      _$PostListImageModelCopyWithImpl<PostListImageModel>(
          this as PostListImageModel, _$identity);

  /// Serializes this PostListImageModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostListImageModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, id);

  @override
  String toString() {
    return 'PostListImageModel(image: $image, id: $id)';
  }
}

/// @nodoc
abstract mixin class $PostListImageModelCopyWith<$Res> {
  factory $PostListImageModelCopyWith(
          PostListImageModel value, $Res Function(PostListImageModel) _then) =
      _$PostListImageModelCopyWithImpl;
  @useResult
  $Res call({String image, String id});
}

/// @nodoc
class _$PostListImageModelCopyWithImpl<$Res>
    implements $PostListImageModelCopyWith<$Res> {
  _$PostListImageModelCopyWithImpl(this._self, this._then);

  final PostListImageModel _self;
  final $Res Function(PostListImageModel) _then;

  /// Create a copy of PostListImageModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _PostListImageModel implements PostListImageModel {
  const _PostListImageModel({required this.image, required this.id});
  factory _PostListImageModel.fromJson(Map<String, dynamic> json) =>
      _$PostListImageModelFromJson(json);

  @override
  final String image;
  @override
  final String id;

  /// Create a copy of PostListImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostListImageModelCopyWith<_PostListImageModel> get copyWith =>
      __$PostListImageModelCopyWithImpl<_PostListImageModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostListImageModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostListImageModel &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, image, id);

  @override
  String toString() {
    return 'PostListImageModel(image: $image, id: $id)';
  }
}

/// @nodoc
abstract mixin class _$PostListImageModelCopyWith<$Res>
    implements $PostListImageModelCopyWith<$Res> {
  factory _$PostListImageModelCopyWith(
          _PostListImageModel value, $Res Function(_PostListImageModel) _then) =
      __$PostListImageModelCopyWithImpl;
  @override
  @useResult
  $Res call({String image, String id});
}

/// @nodoc
class __$PostListImageModelCopyWithImpl<$Res>
    implements _$PostListImageModelCopyWith<$Res> {
  __$PostListImageModelCopyWithImpl(this._self, this._then);

  final _PostListImageModel _self;
  final $Res Function(_PostListImageModel) _then;

  /// Create a copy of PostListImageModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? image = null,
    Object? id = null,
  }) {
    return _then(_PostListImageModel(
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
