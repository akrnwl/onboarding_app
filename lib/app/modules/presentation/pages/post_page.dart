import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/model/post_model.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/focus_header.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/tag.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';
import 'package:infoteam_app/gen/assets.gen.dart';
import 'package:intl/intl.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({
    super.key,
    required this.postModel,
    required this.index,
  });
  final List<PostModel> postModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    final router = context.router;
    String Date = DateFormat('yyyy.mm.dd').format(postModel[index].createdAt);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: Focusheader(postModel: postModel, index: index, router: router),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 32,
            right: 32,
            top: 24,
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              postModel[index].title,
              style: const TextStyle(
                fontSize: 25,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  postModel[index].createdBy.nickname,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 151, 151, 151),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  Date,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 151, 151, 151),
                    fontSize: 12,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Tag(
                  postModel: postModel,
                  index: index,
                ),
                const SizedBox(width: 5),
                Tag(
                  postModel: postModel,
                  index: index,
                ),
                const SizedBox(width: 5),
                Tag(
                  postModel: postModel,
                  index: index,
                )
              ],
            ),
            const SizedBox(height: 24),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10), // 이미지의 모서리를 둥글게 설정
                child: Assets.images.eximage
                    .image(width: double.infinity, fit: BoxFit.cover),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              postModel[index].body,
              style: const TextStyle(
                fontSize: 16,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
              ),
            ),
          ]),
        ),
      ),
      bottomNavigationBar: Navbar(
        router: router,
        postModel: postModel,
        index: index,
      ),
    );
  }
}
