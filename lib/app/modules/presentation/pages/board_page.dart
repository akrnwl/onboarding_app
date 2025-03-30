import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/header.dart'; 
import 'package:infoteam_app/app/modules/presentation/widgets/button.dart';

import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';




class BoardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: Header(),
      body: ListView(
        children: const [
          Padding(
          padding: const EdgeInsets.only(left:12, right:12,top:16),
          child: Column(
            children: [
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
              Button(),
              SizedBox(height: 20,),
            ]
          ),
        ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
