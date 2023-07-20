import 'package:flutter/material.dart';
import 'package:wwebprofile/widgets/common_widget/reuseable_text.dart';

class Projects extends StatelessWidget {
  Projects({super.key});

  // Define a list of project titles and descriptions
  final List<Map<String, dynamic>> projects = [
    {
      'title': 'Project 1',
      'description':
          'This is the first project description. It showcases the features and technologies used.',
    },
    {
      'title': 'Project 2',
      'description':
          'Project 2 is a mobile app built using Flutter for both Android and iOS platforms.',
    },
    {
      'title': 'Project 3',
      'description':
          'The third project is a web application developed using ReactJS and Node.js.',
    },
    {
      'title': 'Project 4',
      'description':
          'Project 4 focuses on database management and optimization techniques.',
    },
    {
      'title': 'Project 5',
      'description':
          'This project involves implementing machine learning algorithms for data analysis.',
    },
    {
      'title': 'Project 6',
      'description':
          'The final project is an e-commerce platform with payment integration.',
    },
    // Add more projects here
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: projects.length,
          itemBuilder: (context, index) {
            final project = projects[index];
            final title = project['title'];
            final description = project['description'];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReText(
                    title,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  const SizedBox(height: 4),
                  ReText(
                    description,
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            );
          }),
    );
  }
}
