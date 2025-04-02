import 'package:flutter/material.dart';
import 'package:infoteam_app/gen/assets.gen.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_image_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_model.dart';
import 'dart:convert';
import 'dart:typed_data';

class Thumbnailboard extends StatelessWidget {
  const Thumbnailboard({super.key, required this.postModel,});

  final PostListModel postModel;
  
  @override
  Widget build(BuildContext context) {
    final List<PostListImageModel>? postListImageModel = postModel.images;
    Uint8List image = Uint8List(0);
    if(postListImageModel != null && postListImageModel.isNotEmpty)
    {
          image = base64Decode(postListImageModel[0].image); //index
    }
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15, left: 14, right: 14, bottom: 14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              postModel.title,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 7),
            if (image.isNotEmpty) // 이미지 URL이 있을 때 처리
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10), // 이미지의 모서리를 둥글게 설정
                  child: Image.memory(
                    image, 
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              )
            else
              Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(16.0),
                ),
                width: double.infinity,
                child: Text(
                  postModel.body,
                  style: const TextStyle(
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
