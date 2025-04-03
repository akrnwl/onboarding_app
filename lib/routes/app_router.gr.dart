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
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_model.dart'
    as _i6;
import 'package:infoteam_app/app/modules/presentation/pages/board_page.dart'
    as _i1;
import 'package:infoteam_app/app/modules/presentation/pages/home_page.dart'
    as _i2;
import 'package:infoteam_app/app/modules/presentation/pages/post_page.dart'
    as _i3;

/// generated route for
/// [_i1.BoardPage]
class BoardRoute extends _i4.PageRouteInfo<void> {
  const BoardRoute({List<_i4.PageRouteInfo>? children})
    : super(BoardRoute.name, initialChildren: children);

  static const String name = 'BoardRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.BoardPage();
    },
  );
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
    required _i6.PostListModel postListModel,
    required int index,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         PostRoute.name,
         args: PostRouteArgs(
           key: key,
           postListModel: postListModel,
           index: index,
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
        postListModel: args.postListModel,
        index: args.index,
      );
    },
  );
}

class PostRouteArgs {
  const PostRouteArgs({
    this.key,
    required this.postListModel,
    required this.index,
  });

  final _i5.Key? key;

  final _i6.PostListModel postListModel;

  final int index;

  @override
  String toString() {
    return 'PostRouteArgs{key: $key, postListModel: $postListModel, index: $index}';
  }
}
