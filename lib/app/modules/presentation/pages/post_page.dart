import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_model.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/focus_header.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/tag.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';
import 'package:infoteam_app/gen/assets.gen.dart';
import 'package:intl/intl.dart';

@RoutePage()
class PostPage extends StatelessWidget {
  const PostPage({
    super.key,
    required this.postListModel,
    required this.index,
  });

  final PostListModel postListModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    final router = context.router;
    String Date =
        DateFormat('yyyy.mm.dd').format(postListModel.list[index].createdAt);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: Focusheader(name: postListModel.list[index].title),
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
              postListModel.list[index].title,
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
                  postListModel.list[index].createdBy.nickname,
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
                    fontSize: 16,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w600,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Tag(
                  postListModel: postListModel,
                ),
                const SizedBox(width: 5),
                Tag(
                  postListModel: postListModel,
                ),
                const SizedBox(width: 5),
                Tag(
                  postListModel: postListModel,
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
              postListModel.list[index].body,
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
        postListModel: postListModel,
      ),
    );
  }
}

/*     Future<void> _fetchData() async {
    setState(() {
      isLoading = true; // 로딩 상태 시작
    });

    _dio = Dio(BaseOptions(
        baseUrl: 'https://api.newbie.gistory.me/',
        headers: {'Content-Type': 'application/json'}));

    try {
      final postApi = PostApi(_dio);
      response = await postApi.getPosts(); // 데이터 받아오기
      postModel = response!.list;
      print(response!.list);
      setState(() {
        isLoading = false; // 로딩 상태 종료
      });
    } on DioException catch (e) {
      setState(() {
        isLoading = false; // 로딩 상태 종료
      });
      print('DioError occurred: ${e.message}'); // DioError 메시지 출력
      if (e.response != null) {
        print('Response data: ${e.response?.data}');
      }
    } catch (e) {
      setState(() {
        isLoading = false; // 로딩 상태 종료
      });
      print('General Error occurred: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData(); // 페이지 로드 시 데이터 가져오기
  } */
