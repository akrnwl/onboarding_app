import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/focus_header.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/tag.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';

import 'package:infoteam_app/gen/assets.gen.dart'; 


class PostPage extends StatelessWidget {
  @override
  final title="게시글 제목";
  final author="어문경";
  final date="2025.03.27";
  final content="냠냠";
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      appBar: Focusheader(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(left:32,right: 32,top:24,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("$title", style: const TextStyle(
                fontSize: 25,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
              ),
              const SizedBox(height: 10,),
              Row(
                children: [
                Text("$author",style: const TextStyle(
                color: Color.fromARGB(255, 151, 151, 151),
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
              ),
              const SizedBox(width: 20,),
               Text("$date",style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
              )
              ],
              ),
              const SizedBox(height: 10,),
              Row(children: [
                Tag(), 
                const SizedBox(width: 5),
                Tag(),
                const SizedBox(width: 5),
                Tag()
              ],
              ),
              const SizedBox(height: 24),
              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
              borderRadius: BorderRadius.circular(10),  // 이미지의 모서리를 둥글게 설정
              child: Assets.images.eximage.image(width: double.infinity, fit: BoxFit.cover),
              ),
              ),
              const SizedBox(height: 24),
              Text("$content",style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
              ),
            ]
          ),
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
