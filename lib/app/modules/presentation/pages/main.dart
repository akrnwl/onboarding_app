import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/presentation/pages/home_page.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Gen Example',
      home: HomePage(),
    );
  }
}