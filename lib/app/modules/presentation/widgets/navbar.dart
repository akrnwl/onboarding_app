import 'package:flutter/material.dart';
import 'package:infoteam_app/gen/assets.gen.dart'; 

class Navbar extends StatelessWidget {
  @override
  Navbar({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
        color: Colors.white, 
        child: SizedBox(
          height: 64,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(
                icon: Assets.icons.home.svg(),
                onPressed: () {

                }),
              IconButton(
                icon: Assets.icons.viewGrid.svg(),
                onPressed: () {

                }),
              IconButton(
                icon: Assets.icons.profile.svg(),
                onPressed: () {

                })
            ]
          )
        ),
      );
  }
}
