import 'package:flutter/material.dart';
import 'package:wwebprofile/widgets/common_widget/reuseable_text.dart';
import 'package:wwebprofile/widgets/horizontal_line.dart';
import 'package:wwebprofile/widgets/past_experiences.dart';

class LastBar extends StatelessWidget {
  const LastBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50, right: 15, bottom: 30),
      child: Column(
        children: [
          ReText(
            "Experience",
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
          HorizontalLine(
            width: 300,
          ),
          Experiences(),
        ],
      ),
    );
  }
}
