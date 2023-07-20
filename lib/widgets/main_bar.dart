import 'package:flutter/material.dart';
import 'package:wwebprofile/widgets/common_widget/reuseable_text.dart';
import 'package:wwebprofile/widgets/horizontal_line.dart';
import 'package:wwebprofile/widgets/projects.dart';

class MainBody extends StatelessWidget {
  const MainBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 50, right: 15, bottom: 20),
      child: Column(children: [
        // ReText("Experience", fontSize: 16, fontWeight: FontWeight.bold),
        // Experiences(),
        // HorizontalLine(
        //   width: 600,
        // ),
        const Padding(
          padding: EdgeInsets.all(10.0),
          child: ReText("Projects", fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const HorizontalLine(
          width: 300,
        ),
        Projects(),
      ]),
    );
  }
}
