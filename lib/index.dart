import 'package:flutter/material.dart';
import 'main.dart';
import 'header.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          // 배경 이미지
          Expanded(
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/main-after.webp'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // 앱바와 내용
          Column(
            children: [
              SizedBox(
                height: 74,
                child: Header(),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      // 스크롤 가능한 콘텐츠
                      Container(
                        height: screenHeight - 74, // 원하는 크기로 설정
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/main-after.webp'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      // 추가 콘텐츠 예시
                      Container(
                        height: screenHeight, // 원하는 크기로 설정
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('images/main-sec3.webp'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}