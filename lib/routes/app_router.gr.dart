// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:infoteam_app/app/modules/data/model/post_model.dart' as _i6;
import 'package:infoteam_app/app/modules/presentation/pages/board_page.dart'
    as _i1;
import 'package:infoteam_app/app/modules/presentation/pages/home_page.dart'
    as _i2;
import 'package:infoteam_app/app/modules/presentation/pages/post_page.dart'
    as _i3;

/// generated route for
/// [_i1.BoardPage]
class BoardRoute extends _i4.PageRouteInfo<BoardRouteArgs> {
  BoardRoute({
    _i5.Key? key,
    required List<_i6.PostModel> postModel,
    required int index,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         BoardRoute.name,
         args: BoardRouteArgs(key: key, postModel: postModel, index: index),
         initialChildren: children,
       );

  static const String name = 'BoardRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BoardRouteArgs>();
      return _i1.BoardPage(
        key: args.key,
        postModel: args.postModel,
        index: args.index,
      );
    },
  );
}

class BoardRouteArgs {
  const BoardRouteArgs({
    this.key,
    required this.postModel,
    required this.index,
  });

  final _i5.Key? key;

  final List<_i6.PostModel> postModel;

  final int index;

  @override
  String toString() {
    return 'BoardRouteArgs{key: $key, postModel: $postModel, index: $index}';
  }
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.PostPage]
class PostRoute extends _i4.PageRouteInfo<PostRouteArgs> {
  PostRoute({
    _i5.Key? key,
    required List<_i6.PostModel> postModel,
    required int index,
    required int imageIndex,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         PostRoute.name,
         args: PostRouteArgs(
           key: key,
           postModel: postModel,
           index: index,
           imageIndex: imageIndex,
         ),
         initialChildren: children,
       );

  static const String name = 'PostRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PostRouteArgs>();
      return _i3.PostPage(
        key: args.key,
        postModel: args.postModel,
        index: args.index,
        imageIndex: args.imageIndex,
      );
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({
    this.key,
    required this.postModel,
    required this.index,
    required this.imageIndex,
  });

  final _i5.Key? key;

  final List<_i6.PostModel> postModel;

  final int index;

  final int imageIndex;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, postModel: $postModel, index: $index, imageIndex: $imageIndex}';
  }
}
