import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quest_04/constants/gaps.dart';
import 'package:quest_04/constants/sizes.dart';

class MenuButton extends StatelessWidget {
  final String text;
  final IconData? icons;
  const MenuButton({super.key, required this.text, this.icons});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.size10,
      ),
      height: Sizes.size32,
      decoration: BoxDecoration(
        color: Colors.grey.shade300,
        borderRadius: BorderRadius.circular(
          Sizes.size10,
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (icons != null) ...[
              FaIcon(
                icons,
                size: Sizes.size16,
              ),
              Gaps.h8,
            ],
            Text(text),
          ],
        ),
      ),
    );
  }
}
