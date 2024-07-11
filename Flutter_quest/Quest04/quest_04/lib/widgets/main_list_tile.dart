import 'package:flutter/material.dart';
import 'package:quest_04/constants/gaps.dart';
import 'package:quest_04/constants/sizes.dart';

class MainListLile extends StatelessWidget {
  const MainListLile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 1.0),
      child: SizedBox(
        height: Sizes.size96,
        child: Row(
          children: [
            Container(
              width: 100,
              height: Sizes.size96,
              color: Colors.grey,
              child: const Center(
                child: Text('사진'),
              ),
            ),
            Gaps.h5,
            Expanded(
              child: Container(
                height: Sizes.size96,
                color: Colors.grey,
                child: const Center(
                  child: Text('설명'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
