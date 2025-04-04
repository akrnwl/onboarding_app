import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/model/post_model.dart';
import 'package:infoteam_app/gen/assets.gen.dart';

class Focusheader extends StatelessWidget implements PreferredSizeWidget {
  const Focusheader({
    super.key,
    required this.router,
    required this.index,
    required this.postModel,
  });

  final List<PostModel> postModel;
  final int index;
  final StackRouter router;
  @override
  Size get preferredSize => const Size.fromHeight(56.0);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      leading: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 12,
        ),
        child: IconButton(
          icon: Assets.icons.left.svg(),
          onPressed: () {
            context.router.pop();
          },
        ),
      ),
      title: const Padding(
        padding: EdgeInsets.only(top: 12, bottom: 12, right: 12, left: 72),
        child: Text(
          '게시판 선택',
          style: TextStyle(
            fontSize: 22,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
      actions: [
        IconButton(
          icon: Assets.icons.search.svg(),
          onPressed: () {},
        ),
        IconButton(
          icon: Assets.icons.review.svg(),
          onPressed: () {},
        ),
      ],
    );
  }
}
