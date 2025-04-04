import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/data/model/post_model.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/header.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/button.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';

@RoutePage()
class BoardPage extends StatelessWidget {
  BoardPage({
    super.key,
    required this.postModel,
    required this.index,
  });
  bool isLoading = false;
  final List<PostModel> postModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    final router = context.router;
    return isLoading
        ? const Center(child: CircularProgressIndicator())
        : Scaffold(
            backgroundColor: const Color.fromARGB(255, 248, 248, 248),
            appBar: const Header(),
            body: isLoading
                ? const Center(child: Text('데이터가 없습니다.'))
                : ListView.builder(
                    itemCount: index,
                    itemBuilder: (context, index) {
                      return Button(
                        postModel: postModel,
                        index: index,
                        router: router,
                      );
                    }),
            bottomNavigationBar: Navbar(
              router: router,
              postModel: postModel,
              index: index,
            ),
          );
  }
}
