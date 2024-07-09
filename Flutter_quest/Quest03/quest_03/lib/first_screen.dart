// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quest_03/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  bool isCat = true;

  void setIsCat(BuildContext context, bool isFirst) {
    print('isCat의 현재 상태: $isCat');
    setState(() {
      isCat = !isFirst;
    });
    if (isFirst) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SecondScreen(setIsCat: setIsCat),
        ),
      );
    } else {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text(
          'First Page',
          style: TextStyle(color: Colors.white),
        ),
        leading: const Center(
          child: FaIcon(
            FontAwesomeIcons.cat,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 150,
            ),
            ElevatedButton(
              onPressed: () => setIsCat(context, true),
              child: const Text('Next'),
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 300,
              width: 300,
              child: Image.network(
                'https://plus.unsplash.com/premium_photo-1677545182425-4fb12bdb9faf?q=80&w=3544&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                fit: BoxFit.cover,
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*
회고: state를 다른 위젯에 넘겨주고 다른 위젯에서 state의 상태를 변경하는 방법에 대한 고민이 많았습니다.
저는 setstate가 일어나는 함수를 다른 위젯에 넘겨주어 그 함수를 실행시키는 방식으로 진행했지만,
조금 더 구조적인 코드를 작성하기 위한 고민이 필요할 것 같습니다.
 */