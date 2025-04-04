import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/presentation/pages/home_page.dart';
import 'package:infoteam_app/routes/app_router.dart';

final _appRouter = AppRouter(); // AppRouter 인스턴스 생성

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'INFOTEAM_APP',
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}
