import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quest_04/constants/gaps.dart';
import 'package:quest_04/constants/sizes.dart';
import 'package:quest_04/widgets/main_list_tile.dart';
import 'package:quest_04/widgets/menu_button.dart';

class DongneScreen extends StatelessWidget {
  const DongneScreen({super.key});

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
            FontAwesomeIcons.circleUser,
            color: Colors.black,
          ),
          Gaps.h20,
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Sizes.size24,
                    ),
                    color: Colors.grey,
                  ),
                ),
                Gaps.h10,
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Sizes.size24,
                    ),
                    color: Colors.grey,
                  ),
                ),
                Gaps.h10,
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Sizes.size24,
                    ),
                    color: Colors.grey,
                  ),
                ),
                Gaps.h10,
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Sizes.size24,
                    ),
                    color: Colors.grey,
                  ),
                ),
                Gaps.h10,
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MenuButton(
                  text: '주제',
                  icons: FontAwesomeIcons.bars,
                ),
                MenuButton(
                  text: '인기글',
                  icons: FontAwesomeIcons.fire,
                ),
                MenuButton(
                  text: '병원/약국',
                ),
                MenuButton(
                  text: '생활',
                ),
              ],
            ),
          ),
          Gaps.v20,
          const MainListLile(),
          const MainListLile(),
          const MainListLile(),
          const MainListLile(),
        ],
      ),
    );
  }
}
