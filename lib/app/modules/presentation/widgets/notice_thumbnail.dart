import 'package:flutter/material.dart';
import 'package:infoteam_app/gen/assets.gen.dart';

class Thumbnailboard extends StatelessWidget {
  Thumbnailboard({required this.name, required this.content, this.image, Key? key});

  final String name;
  final String content;
  final String? image;

  @override
  Widget build(BuildContext context) {
    return Container(
    decoration: BoxDecoration(
      color: const Color.fromARGB(255, 255, 255, 255),
      borderRadius: BorderRadius.circular(15.0),
    ),
    child: Padding(
      padding: const EdgeInsets.only(top:15,left:14,right: 14,bottom: 14),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("$name", style: const TextStyle(
            fontSize: 16,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w600,
          ),
          ),
          SizedBox(height : 7),
          if(image!=null)
              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
              borderRadius: BorderRadius.circular(10),  // 이미지의 모서리를 둥글게 설정
              child: Image.network(image!, width: double.infinity, fit: BoxFit.cover)
            ),
            ) 
          else
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(16.0),
              ),
            width: double.infinity,
            child: Text("$content", style: const TextStyle(
            fontSize: 14,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w400,
            ),
            ),
          ),
          ],
          ),
          ),
    );
  }
}