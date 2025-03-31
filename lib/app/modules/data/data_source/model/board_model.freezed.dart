// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'board_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostListBoardModel {
  String get id;
  String get title;
  DateTime get createdAt;
  UserModel get creator;

  /// Create a copy of PostListBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostListBoardModelCopyWith<PostListBoardModel> get copyWith =>
      _$PostListBoardModelCopyWithImpl<PostListBoardModel>(
          this as PostListBoardModel, _$identity);

  /// Serializes this PostListBoardModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostListBoardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creator, creator) || other.creator == creator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, createdAt, creator);

  @override
  String toString() {
    return 'PostListBoardModel(id: $id, title: $title, createdAt: $createdAt, creator: $creator)';
  }
}

/// @nodoc
abstract mixin class $PostListBoardModelCopyWith<$Res> {
  factory $PostListBoardModelCopyWith(
          PostListBoardModel value, $Res Function(PostListBoardModel) _then) =
      _$PostListBoardModelCopyWithImpl;
  @useResult
  $Res call({String id, String title, DateTime createdAt, UserModel creator});

  $UserModelCopyWith<$Res> get creator;
}

/// @nodoc
class _$PostListBoardModelCopyWithImpl<$Res>
    implements $PostListBoardModelCopyWith<$Res> {
  _$PostListBoardModelCopyWithImpl(this._self, this._then);

  final PostListBoardModel _self;
  final $Res Function(PostListBoardModel) _then;

  /// Create a copy of PostListBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = null,
    Object? creator = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creator: null == creator
          ? _self.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of PostListBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get creator {
    return $UserModelCopyWith<$Res>(_self.creator, (value) {
      return _then(_self.copyWith(creator: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PostListBoardModel implements PostListBoardModel {
  const _PostListBoardModel(
      {required this.id,
      required this.title,
      required this.createdAt,
      required this.creator});
  factory _PostListBoardModel.fromJson(Map<String, dynamic> json) =>
      _$PostListBoardModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final DateTime createdAt;
  @override
  final UserModel creator;

  /// Create a copy of PostListBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostListBoardModelCopyWith<_PostListBoardModel> get copyWith =>
      __$PostListBoardModelCopyWithImpl<_PostListBoardModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostListBoardModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostListBoardModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.creator, creator) || other.creator == creator));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, createdAt, creator);

  @override
  String toString() {
    return 'PostListBoardModel(id: $id, title: $title, createdAt: $createdAt, creator: $creator)';
  }
}

/// @nodoc
abstract mixin class _$PostListBoardModelCopyWith<$Res>
    implements $PostListBoardModelCopyWith<$Res> {
  factory _$PostListBoardModelCopyWith(
          _PostListBoardModel value, $Res Function(_PostListBoardModel) _then) =
      __$PostListBoardModelCopyWithImpl;
  @override
  @useResult
  $Res call({String id, String title, DateTime createdAt, UserModel creator});

  @override
  $UserModelCopyWith<$Res> get creator;
}

/// @nodoc
class __$PostListBoardModelCopyWithImpl<$Res>
    implements _$PostListBoardModelCopyWith<$Res> {
  __$PostListBoardModelCopyWithImpl(this._self, this._then);

  final _PostListBoardModel _self;
  final $Res Function(_PostListBoardModel) _then;

  /// Create a copy of PostListBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? createdAt = null,
    Object? creator = null,
  }) {
    return _then(_PostListBoardModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      creator: null == creator
          ? _self.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of PostListBoardModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get creator {
    return $UserModelCopyWith<$Res>(_self.creator, (value) {
      return _then(_self.copyWith(creator: value));
    });
  }
}

// dart format on
