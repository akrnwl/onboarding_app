import 'package:auto_route/auto_route.dart';
import 'package:infoteam_app/routes/app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, initial: true),
        AutoRoute(
          page: BoardRoute.page,
        ),
        AutoRoute(
            page: PostRoute.page,
            path: ':index/:postListModel'), // path:':index' 는 index 매개변수 추가?
      ];
}

// @MaterialAutoRouter(
//   replaceInRouteName: 'Page,Route', // "page"을 "Route"로 변경하여 생성
//   routes: <AutoRoute>[
//     AutoRoute(page: HomePage, initial: true), // 첫 화면
//     AutoRoute(page: BoardPage),
//     AutoRoute(page: PostPage), // 상세 화면
//   ],
// )
// class AppRouter {} // 자동 생성된 클래스 상속
