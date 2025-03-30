import 'package:flutter/material.dart';

class Tag extends StatelessWidget {
  @override
  final name;
  Tag({Key? key})
      : name = "태그", // 추후에 게시판 만드는 페이지 생기면 변수 추가해야될듯..?
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 114, 114, 114),
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: 41,
      height: 26,
      child: Row( 
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("#$name",
          style: TextStyle(
              fontSize: 12,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w500,
              color: Colors.white,
          ))
        ],
      ),
    );
  }
}
