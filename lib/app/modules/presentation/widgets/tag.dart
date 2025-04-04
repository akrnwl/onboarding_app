import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/model/post_list_model.dart';
import 'package:infoteam_app/app/modules/data/model/post_model.dart';

class Tag extends StatelessWidget {
  const Tag({
    super.key,
    required this.postModel,
    required this.index,
  });

  final List<PostModel> postModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 114, 114, 114),
        borderRadius: BorderRadius.circular(16.0),
      ),
      width: 41,
      height: 26,
      child: ListView.builder(
          scrollDirection: Axis.horizontal, // 가로로 스크롤 설정
          itemCount: index,
          itemBuilder: (context, index) {
            Text("#${postModel[index].tags}",
                style: const TextStyle(
                  fontSize: 12,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ));
            return null; // prettier 자동 완성으로 생김
          }),
    );
  }
}
