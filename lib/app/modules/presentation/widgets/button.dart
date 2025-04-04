import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/model/post_model.dart';
import 'package:infoteam_app/gen/assets.gen.dart';
import 'package:infoteam_app/app/modules/data/model/post_list_model.dart';

import 'package:infoteam_app/routes/app_router.gr.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.postModel,
    required this.router,
    required this.index,
  });

  final List<PostModel> postModel;
  final StackRouter router;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 13,
        right: 12,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 15, bottom: 14),
              child: Text(
                postModel[index].title,
                style: const TextStyle(
                  fontSize: 16,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 14, bottom: 14),
              child: IconButton(
                onPressed: () {
                  router
                      .navigate(PostRoute(postModel: postModel, index: index));
                },
                icon: Assets.icons.right.svg(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
