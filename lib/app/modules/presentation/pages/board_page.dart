import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/post_api.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/header.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/button.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';
import 'package:infoteam_app/routes/app_router.gr.dart';

@RoutePage()
class BoardPage extends StatefulWidget {
  const BoardPage({super.key});
  @override
  State<BoardPage> createState() => _BoardPageState();
}

class _BoardPageState extends State<BoardPage> {
  bool isLoading = false;
  late final Dio _dio;
  PostListModel? response;
  late List<PostModel> postModel;

  Future<void> _fetchData() async {
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
  }

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    router.push(const HomeRoute());
    router.push(const BoardRoute());
    router.push(PostRoute(postListModel: response!, index: response!.count));
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: const Color.fromARGB(255, 248, 248, 248),
            appBar: const Header(),
            body: isLoading
                ? const Center(child: Text('데이터가 없습니다.'))
                : ListView.builder(
                    itemCount: response!.count,
                    itemBuilder: (context, index) {
                      return Button(
                        postListModel: response!,
                        index: index,
                        router: router,
                      );
                    }),
            bottomNavigationBar: Navbar(
              router: router,
              postListModel: response!,
            ),
          );
  }
}
