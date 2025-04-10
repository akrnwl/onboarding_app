import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';
import 'package:infoteam_app/app/modules/presentation/bloc/loading_bloc.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/header.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/notice_thumbnail.dart';
import 'package:infoteam_app/app/modules/data/data_source/post_api.dart';
import 'package:infoteam_app/app/modules/data/model/post_list_model.dart';
import 'package:infoteam_app/app/modules/data/model/post_model.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isLoading = false;
  late final Dio _dio;
  PostListModel? response;
  late List<PostModel> postModel;
  late int index;
  final bloc = LoadingBloc();

  Future<void> _fetchData() async {
    setState(() {
      isLoading = true; // 로딩 상태 시작
    });

    _dio = Dio(BaseOptions(
        baseUrl: 'https://api.newbie.gistory.me/',
        headers: {'Content-Type': 'application/json'}));

    try {
      bloc.add(LoadingDuring());
      final postApi = PostApi(_dio);
      response = await postApi.getPosts();
      postModel = response!.list;
      index = response!.count;
      bloc.add(LoadingEnd());
      setState(() {
        isLoading = false;
        postModel = response!.list;
        index = response!.count;
      });
    } catch (e) {
      bloc.add(LoadingError());
      setState(() {
        isLoading = false; // 로딩 상태 종료
      });
      print('General Error occurred: $e');
    }
  }

  @override
  void initState() {
    super.initState();
    _fetchData();
  }

  @override
  Widget build(BuildContext context) {
    final router = context.router;
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : response == null
            ? const Center(child: Text('데이터가 없습니다.'))
            : Scaffold(
                backgroundColor: const Color.fromARGB(255, 248, 248, 248),
                appBar: const Header(),
                body: ListView.builder(
                  itemCount: response!.count,
                  itemBuilder: (context, index) {
                    return postModel[index].images != null
                        ? Thumbnailboard(
                            postModel: postModel,
                            index: index,
                            imageIndex: postModel[index].images!.length - 1,
                          )
                        : Thumbnailboard(
                            postModel: postModel,
                            index: index,
                            imageIndex: 0,
                          );
                  },
                ),
                bottomNavigationBar: isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : Navbar(
                        router: router,
                        postModel: postModel,
                        index: index,
                      ),
              );
  }
}
