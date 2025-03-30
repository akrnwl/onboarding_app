import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:infoteam_app/app/modules/presentation/widgets/header.dart'; 
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/notice_thumbnail.dart';

class HomePage extends StatelessWidget {

  //Future<void>는 특정 비동기 작업이 끝날 때까지 기다리는 역할을 함, _fetchData() 는 비동기 함수로, 서버에서 데이터를 비동기적으로 가져오는 역할을 한다.
  Future<void> _fetchData() async {
    var url = Uri.https('api.newbie.gistory.me','/boards');
    var response = await http.get(url);
    var data; // if 안에서 지역변수 걸리니까 여기서 먼저 변수로 지정 => scope 개념..?
    if(response.statusCode == 200) { // 200이 연결 성공..? 했을 때 출력되는 값이었던 거 같음
      data = jsonDecode(response.body);
    }

    final list = data['list'][0]['title'];
    print(list);
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: Header(),
      body: ListView(
        children: [
          Padding(
          padding: const EdgeInsets.only(bottom:20, left:18, right:18,top:16),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){_fetchData();}, child: Text('fetch data')),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRdosUmz6Q1WLwvkA4dCncR3fospdL6ETMoUw&s",),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),              
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
              Thumbnailboard(name: "게시글 제목", content: "공지 내용"),
              const SizedBox(height: 20,),
            ]
          ),
        ),
        ],
      ),
      bottomNavigationBar: Navbar(),
    );
  }
}
