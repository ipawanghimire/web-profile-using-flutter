import 'package:flutter/material.dart';
import 'package:wwebprofile/widgets/common_widget/reuseable_text.dart';
import 'package:wwebprofile/widgets/horizontal_line.dart';

class Education extends StatelessWidget {
  const Education({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> educationList = [
      {
        'title': 'Bachelor in Computer Engineering',
        'institute':
            'Advanced College of Engineering and management,TU -Kalanki,Kathmandu',
      },
      {
        'title': 'Highschool with Science major',
        'institute': 'Hetauda School of Management -Hetauda,Makawanpur',
      },
      // Add more education data here
    ];

    return Column(
      children: [
        const ReText(
          "Education",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        const Padding(
          padding: EdgeInsets.only(bottom: 20),
          child: HorizontalLine(
            width: 300,
          ),
        ),
        ListView.builder(
          shrinkWrap: true, // Ensure the ListView only takes the space it needs
          itemCount: educationList.length,
          itemBuilder: (context, index) {
            final education = educationList[index];
            final title = education['title'];
            final institute = education['institute'];
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ReText(
                  title!,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                ReText(
                  institute!,
                  fontSize: 12,
                  color: Colors.grey,
                ),
                const SizedBox(
                    height: 10), // Add spacing between each education item
              ],
            );
          },
        ),
      ],
    );
  }
}
