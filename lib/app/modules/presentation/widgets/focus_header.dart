import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:infoteam_app/gen/assets.gen.dart'; 
import 'package:http/http.dart' as http;



class Focusheader extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;
  var name;

  Focusheader({Key? key})
      : preferredSize = Size.fromHeight(56.0), // AppBar의 기본 높이
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      leading: IconButton(
        icon: Assets.icons.left.svg(),
        onPressed: () {

        },
        ),
      title: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(top:12,bottom: 12,right: 130.5,left: 130.5),
            child: Text(
              '게시판 선택',
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
        ],
      ),
      actions: [
        IconButton(
          icon: Assets.icons.search.svg(),
          onPressed: () {
            print('hi');
          },
        ),
/*         IconButton(
          icon: Assets.icons.review.svg(),
          onPressed: () {
            // 커스텀 아이콘 클릭 시 동작
          },
        ), */
      ],
    );
  }
}
