import 'package:flutter/material.dart';
import 'package:infoteam_app/gen/assets.gen.dart'; 


class Button extends StatelessWidget {
  final name="dummy";
  const Button({Key? key})
      : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left:13, right:12,),
      child: Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(16.0),
      ) ,
            child: Row( 
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 14,top:15,bottom: 14),
            child: Text("$name", style: const TextStyle(
              fontSize: 16,
              fontFamily: 'Pretendard',
              fontWeight: FontWeight.w600,
            ),
            ),
          ),
          SizedBox(width: 8,),
          Padding(
            padding: const EdgeInsets.only(top:15,right: 14,bottom: 14),
            child: IconButton(
              onPressed: () {
                // 버튼 클릭 시 동작
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
