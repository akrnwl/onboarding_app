import 'package:flutter/material.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/header.dart'; 
import 'package:infoteam_app/app/modules/presentation/widgets/navbar.dart';
import 'package:infoteam_app/app/modules/presentation/widgets/notice_thumbnail.dart';
import 'package:dio/dio.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String title = 'dummy';  // 초기 title 값 설정
  bool isLoading = false;  // 로딩 상태 추가
  final Dio _dio = Dio();
  var dataList = [];
  var dataIndex = 0;
  // 비동기 데이터 가져오는 함수
  Future<void> _fetchData() async {
    
    setState(() {
      isLoading = true;  // 로딩 상태 시작
    });
    try {
      var response = await _dio.get('https://api.newbie.gistory.me/posts');
      print(response.data);
        dataList = response.data['list'];
        dataIndex = response.data['count'];
        setState(() {
          isLoading = false;
        });
      
    } catch(e) 
    {
      setState(() {
        isLoading = false;  // 로딩 상태 종료
      });
      // 예외 처리
      print('Error occurred: $e');
    }

    
    /* try {
      var url = Uri.https('api.newbie.gistory.me', '/boards');

      var response = await http.get(url);
      
      if (response.statusCode == 200) {
        var data = jsonDecode(response.body); // 데이터 파싱
        setState(() {
          title = data['list'][0]['title'];  // title을 업데이트
          isLoading = false;  // 로딩 상태 종료
        });
      } else {
        setState(() {
          isLoading = false;  // 로딩 상태 종료
        });
        // 서버에서 에러가 발생한 경우
        print('Failed to load data, Status code: ${response.statusCode}');
      }
    } catch (e) {
      setState(() {
        isLoading = false;  // 로딩 상태 종료
      });
      // 예외 처리
      print('Error occurred: $e');
    } */
  }
  @override
  void initState() {
    super.initState();
    _fetchData();  // 페이지 로드 시 데이터 가져오기
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 248, 248, 248),
      appBar: Header(),
      body: /* isLoading 
          ? const Center(child: CircularProgressIndicator())  // 데이터가 없고 로딩 중일 때 로딩 인디케이터 표시
          : */ ListView.builder(
              itemCount: dataIndex,  // data_list의 길이가 0일 경우 오류 없이 작동
              itemBuilder: (context, index) {
                return Thumbnailboard(
                  name: dataList[index]['title'],
                  content: dataList[index]['body'],
                );
              },
            ),

        /* children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 20, left: 18, right: 18, top: 16),
            child: Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    _fetchData();  // 버튼을 누르면 데이터 가져오기
                  },
                  child: Text('Fetch Data'),
                ),
                // 로딩 상태일 때 로딩 인디케이터 표시
                if (isLoading) 
                  CircularProgressIndicator(),
                if (!isLoading)
                  Thumbnailboard(name: title, content: "공지 내용"),  // title을 반영한 데이터 표시
                const SizedBox(height: 20),
              ],
            ),
          ),
        ], */
      bottomNavigationBar: Navbar(),
     );
  }
}
