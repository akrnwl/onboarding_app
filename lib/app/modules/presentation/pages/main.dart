import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/presentation/pages/home_page.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/focus_header.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/button.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/tag.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Gen Example',
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 248, 248, 248),
      appBar: Focusheader(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Button(),
            Tag(),
            //Thumbnailboard(),
          ]
        ),
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
