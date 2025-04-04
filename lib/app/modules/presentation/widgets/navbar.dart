import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/model/post_model.dart';
import 'package:infoteam_app/gen/assets.gen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:infoteam_app/routes/app_router.gr.dart';

class Navbar extends StatelessWidget {
  const Navbar({
    super.key,
    required this.router,
    required this.postModel,
    required this.index,
  });
  final StackRouter router;
  final List<PostModel> postModel;
  final int index;

  @override
  Widget build(BuildContext context) {
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
                  router
                      .navigate(BoardRoute(postModel: postModel, index: index));
                }),
            IconButton(
                icon: Assets.icons.profile.svg(),
                onPressed: () {
                  /* router.navigate(PostRoute(
                    postModel: postModel,
                    index: index,
                  )); */
                }),
          ])),
    );
  }
}
