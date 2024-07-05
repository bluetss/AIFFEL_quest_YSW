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
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
            ),
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
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 300,
              color: Colors.purple,
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: 240,
                      height: 240,
                      color: Colors.red,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 180,
                      height: 180,
                      color: Colors.orange,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 120,
                      height: 120,
                      color: Colors.yellow,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      width: 60,
                      height: 60,
                      color: Colors.lightGreen,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
