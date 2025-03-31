// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostListModel {
  String get id;
  String get title;
  String get body;
  List<String> get tags; //required BoardModel board ,
  DateTime get createdAt;
  UserModel get createdBy;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostListModelCopyWith<PostListModel> get copyWith =>
      _$PostListModelCopyWithImpl<PostListModel>(
          this as PostListModel, _$identity);

  /// Serializes this PostListModel to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other.tags, tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body,
      const DeepCollectionEquality().hash(tags), createdAt, createdBy);

  @override
  String toString() {
    return 'PostListModel(id: $id, title: $title, body: $body, tags: $tags, createdAt: $createdAt, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class $PostListModelCopyWith<$Res> {
  factory $PostListModelCopyWith(
          PostListModel value, $Res Function(PostListModel) _then) =
      _$PostListModelCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      List<String> tags,
      DateTime createdAt,
      UserModel createdBy});

  $UserModelCopyWith<$Res> get createdBy;
}

/// @nodoc
class _$PostListModelCopyWithImpl<$Res>
    implements $PostListModelCopyWith<$Res> {
  _$PostListModelCopyWithImpl(this._self, this._then);

  final PostListModel _self;
  final $Res Function(PostListModel) _then;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? tags = null,
    Object? createdAt = null,
    Object? createdBy = null,
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
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _self.tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get createdBy {
    return $UserModelCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _PostListModel implements PostListModel {
  const _PostListModel(
      {required this.id,
      required this.title,
      required this.body,
      required final List<String> tags,
      required this.createdAt,
      required this.createdBy})
      : _tags = tags;
  factory _PostListModel.fromJson(Map<String, dynamic> json) =>
      _$PostListModelFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String body;
  final List<String> _tags;
  @override
  List<String> get tags {
    if (_tags is EqualUnmodifiableListView) return _tags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tags);
  }

//required BoardModel board ,
  @override
  final DateTime createdAt;
  @override
  final UserModel createdBy;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$PostListModelCopyWith<_PostListModel> get copyWith =>
      __$PostListModelCopyWithImpl<_PostListModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$PostListModelToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PostListModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.body, body) || other.body == body) &&
            const DeepCollectionEquality().equals(other._tags, _tags) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.createdBy, createdBy) ||
                other.createdBy == createdBy));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, body,
      const DeepCollectionEquality().hash(_tags), createdAt, createdBy);

  @override
  String toString() {
    return 'PostListModel(id: $id, title: $title, body: $body, tags: $tags, createdAt: $createdAt, createdBy: $createdBy)';
  }
}

/// @nodoc
abstract mixin class _$PostListModelCopyWith<$Res>
    implements $PostListModelCopyWith<$Res> {
  factory _$PostListModelCopyWith(
          _PostListModel value, $Res Function(_PostListModel) _then) =
      __$PostListModelCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String body,
      List<String> tags,
      DateTime createdAt,
      UserModel createdBy});

  @override
  $UserModelCopyWith<$Res> get createdBy;
}

/// @nodoc
class __$PostListModelCopyWithImpl<$Res>
    implements _$PostListModelCopyWith<$Res> {
  __$PostListModelCopyWithImpl(this._self, this._then);

  final _PostListModel _self;
  final $Res Function(_PostListModel) _then;

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? body = null,
    Object? tags = null,
    Object? createdAt = null,
    Object? createdBy = null,
  }) {
    return _then(_PostListModel(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      body: null == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      tags: null == tags
          ? _self._tags
          : tags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      createdAt: null == createdAt
          ? _self.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      createdBy: null == createdBy
          ? _self.createdBy
          : createdBy // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of PostListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get createdBy {
    return $UserModelCopyWith<$Res>(_self.createdBy, (value) {
      return _then(_self.copyWith(createdBy: value));
    });
  }
}

// dart format on
