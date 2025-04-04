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
            path: '/:index/:postListModel'), // path:':index' 는 index 매개변수 추가?
      ];
}
