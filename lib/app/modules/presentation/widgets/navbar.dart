import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/model/post_list_model.dart';
import 'package:infoteam_app/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:infoteam_app/routes/app_router.gr.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
    required this.router,
    required this.postListModel,
  });
  final StackRouter router;
  final PostListModel postListModel;

  @override
  Widget build(BuildContext context) {
    router.push(const HomeRoute());
    router.push(const BoardRoute());
    router.push(
        PostRoute(postListModel: postListModel, index: postListModel.count));
    return BottomAppBar(
      color: Colors.white,
      child: SizedBox(
          height: 64,
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconButton(
                icon: Assets.icons.home.svg(),
                onPressed: () {
                  router.navigate(const HomeRoute());
                }),
            IconButton(
                icon: Assets.icons.viewGrid.svg(),
                onPressed: () {
                  router.navigate(const BoardRoute());
                }),
            IconButton(
                icon: Assets.icons.profile.svg(),
                onPressed: () {
                  router.navigate(PostRoute(
                      postListModel: postListModel,
                      index: postListModel.count));
                }),
          ])),
    );
  }
}
