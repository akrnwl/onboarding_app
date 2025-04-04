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
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 114, 114, 114),
          borderRadius: BorderRadius.circular(8.0),
        ),
        height: 26,
        child: Padding(
          padding: const EdgeInsets.only(right: 6, left: 6, top: 4, bottom: 4),
          child: Text("#${postModel[index].tags}",
              style: const TextStyle(
                fontSize: 12,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
