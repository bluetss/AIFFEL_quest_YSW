// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          '플러터 앱 만들기',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
        leading: const Icon(
          Icons.flutter_dash,
          color: Colors.white,
          size: 30,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            GestureDetector(
              onTap: () => print('버튼이 눌렸습니다.'),
              child: Container(
                color: Colors.blue,
                width: 100,
                height: 50,
                child: const Center(
                  child: Text(
                    'Text',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              width: 300,
              height: 300,
              color: Colors.purple,
              child: Stack(
                children: [
                  Container(width: 240, height: 240, color: Colors.red),
                  Container(width: 180, height: 180, color: Colors.orange),
                  Container(width: 120, height: 120, color: Colors.yellow),
                  Container(width: 60, height: 60, color: Colors.lightGreen),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*
회고:
  텍스트 버튼을 화면 중앙으로 놓고 싶은데
  Column 위젯 안에 children으로 텍스트 버튼과 컨테이너 박스 두 개가 있어서
  텍스트 버튼이 정확히 화면의 중앙에 놓기가 어려웠다.
  그래서 Sized박스를 하나 추가해서 텍스트버튼과 컨테이너의 위치를 조금 내려줬다.
  하지만 이런 방법보다는 더 깔끔한 방법이 있을 것 같아서 위젯들을 좀 더 찾아봐야겠다.
 */