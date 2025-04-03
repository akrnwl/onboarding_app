import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/presentation/pages/post_page.dart';
import 'package:infoteam_app/gen/assets.gen.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_image_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_model.dart';
import 'dart:convert';
import 'dart:typed_data';

import 'package:infoteam_app/routes/app_router.gr.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.postListModel,
    required this.router,
    required this.index,
  });

  final PostListModel postListModel;
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
                postListModel.list[index].title,
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
                  router.navigate(PostRoute(
                      postListModel: postListModel,
                      index: postListModel.count));
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
