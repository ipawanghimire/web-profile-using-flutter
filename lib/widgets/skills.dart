import 'package:flutter/material.dart';
import 'package:wwebprofile/widgets/common_widget/reuseable_text.dart';
import 'package:wwebprofile/widgets/horizontal_line.dart';

class Skills extends StatelessWidget {
  Skills({super.key});

  final List<String> skillsList = [
    "Flutter Framework",
    "Dart Language",
    "Firebase",
    "Riverpod & Bloc",
    "MVC Architecture",
    "Python Language",
    "ML/AI",
    "Node.js & Express",
    "HTML",
    "CSS",
    "JavaScript",
    "Problem Solving",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HorizontalLine(width: 300),
        const ReText(
          "My Skills",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        const HorizontalLine(width: 300),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: skillsList.length,
            itemBuilder: (context, index) {
              final skill = skillsList[index];
              return Center(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 5),
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                    ),
                    const SizedBox(width: 8),
                    Expanded(
                      child: ReText(
                        skill,
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
