import 'package:flutter/material.dart';
import 'package:wwebprofile/widgets/common_widget/reuseable_text.dart';

class Experiences extends StatelessWidget {
  Experiences({super.key});

  // Define a list of past experiences
  final List<Map<String, dynamic>> experiences = [
    {
      'jobTitle': 'Flutter Developer',
      'companyName': 'Freelance',
      'joinedDate': 'Sep 2022',
      'isCurrentlyWorking': true,
      'description':
          'Worked on several small to large scale applications for both Android and Ios devices using Fluter framework, was responsible to write clean reuseable code following international industry standards.',
    },
    {
      'jobTitle': 'Mobile App Developer',
      'companyName': 'Pioneer Associate (COSYS) pvt.ltd',
      'joinedDate': 'Jun 2023',
      'isCurrentlyWorking': true,
      'description':
          'Worked on building attractive responsive UI and integrating APIs on multiple foreign projects using latest standards. ',
    },

    // Add more experiences here
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: experiences.length,
          itemBuilder: (context, index) {
            // Subtract 1 to account for the header line
            final experience = experiences[index];
            final jobTitle = experience['jobTitle'];
            final companyName = experience['companyName'];
            final joinedDate = experience['joinedDate'];
            final isCurrentlyWorking = experience['isCurrentlyWorking'];
            final description = experience['description'];

            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReText(
                    '$jobTitle, $companyName',
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  ReText(
                    'Joined: $joinedDate',
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                  const SizedBox(height: 4),
                  ReText(
                    isCurrentlyWorking
                        ? 'Currently Working'
                        : 'Not Currently Working',
                    fontSize: 14,
                  ),
                  const SizedBox(height: 8),
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
