import 'package:flutter/material.dart';
import 'package:infoteam_app/gen/assets.gen.dart'; 

class Header extends StatelessWidget implements PreferredSizeWidget {
  @override
  final Size preferredSize;

  Header({Key? key})
      : preferredSize = Size.fromHeight(56.0), // AppBar의 기본 높이
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom:8,top:8,left: 20,right: 20),
      child: AppBar(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      title: Row(
        children: [
          Text(
            '나의 게시판 앱',
            style: const TextStyle(
              fontSize: 22,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w700,
            ),
          ),  
        ],
      ),
      actions: [
        SizedBox(width: 8,),
        IconButton(
          icon: Assets.icons.search.svg(),
          onPressed: () {
            // 검색 버튼 클릭 시 동작
          },
        ),
        IconButton(
          icon: Assets.icons.review.svg(),
          onPressed: () {
            // 커스텀 아이콘 클릭 시 동작
          },
        ),
      ],
    ),
    );
  }
}
