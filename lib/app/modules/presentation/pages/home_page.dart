import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/header.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/notice_thumbnail.dart';
import 'package:infoteam_app/app/modules/data/data_source/post_api.dart'; // PostApi 임포트
import 'package:infoteam_app/app/modules/data/data_source/model/post_list_model.dart';
import 'package:infoteam_app/app/modules/data/data_source/model/post_model.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'dummy'; // 초기 title 값 설정
  bool isLoading = false; // 로딩 상태 추가
  late final Dio _dio;
  PostListModel? response; // response를 class 내에서 선언하고
  late List<PostModel> postModel;
  // 비동기 데이터 가져오는 함수
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
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: const Color.fromARGB(255, 248, 248, 248),
            appBar: const Header(),
            body: ListView.builder(
              itemCount: response!.count, // response가 null이 아님을 여기서 보장
              itemBuilder: (context, index) {
                return Thumbnailboard(postModel: postModel[index]);
              },
            ),
            bottomNavigationBar: isLoading
                ? const Center(child: CircularProgressIndicator())
                : Navbar(
                    router: router,
                    postListModel: response!,
                  ),
          );
  }
}
