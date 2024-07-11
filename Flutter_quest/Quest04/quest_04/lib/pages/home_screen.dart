import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quest_04/constants/gaps.dart';
import 'package:quest_04/widgets/main_list_tile.dart';
import 'package:quest_04/widgets/menu_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Row(
            children: [
              Text(
                'OO동',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Gaps.h3,
              Icon(
                Icons.keyboard_arrow_down,
              )
            ],
          ),
        ),
        actions: const [
          FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: Colors.black,
          ),
          Gaps.h20,
          FaIcon(
            FontAwesomeIcons.bell,
            color: Colors.black,
          ),
          Gaps.h10,
        ],
      ),
      body: const Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MenuButton(
                  text: '전체',
                  icons: FontAwesomeIcons.bars,
                ),
                MenuButton(
                  text: '중고차',
                  icons: FontAwesomeIcons.car,
                ),
                MenuButton(
                  text: '알바',
                  icons: FontAwesomeIcons.imagePortrait,
                ),
                MenuButton(
                  text: '부동산',
                  icons: FontAwesomeIcons.house,
                ),
              ],
            ),
          ),
          Gaps.v20,
          MainListLile(),
          MainListLile(),
          MainListLile(),
          MainListLile(),
          MainListLile(),
        ],
      ),
    );
  }
}
