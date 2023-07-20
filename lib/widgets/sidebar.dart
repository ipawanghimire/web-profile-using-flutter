import 'package:flutter/material.dart';
import 'package:wwebprofile/widgets/common_widget/reuseable_text.dart';
import 'package:wwebprofile/widgets/education.dart';
import 'package:wwebprofile/widgets/horizontal_line.dart';
import 'package:wwebprofile/widgets/skills.dart';

class SideBar extends StatelessWidget {
  const SideBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        // Check the available width in the parent container
        bool isFullSize =
            constraints.maxWidth > 350; // You can adjust the value as needed

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                isFullSize // Check if it's full size or not
                    ? const Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage("assets/image/pp.jpg"),
                              maxRadius: 75,
                              minRadius: 45,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ReText(
                                "Pawan Ghimire",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              ReText(
                                "Computer Engineer",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              ReText(
                                "Flutter Developer",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      )
                    : const Column(
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/image/pp.jpg"),
                            maxRadius: 75,
                            minRadius: 45,
                          ),
                          SizedBox(height: 10),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ReText(
                                "Pawan Ghimire",
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                              ReText(
                                "Computer Engineer",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                              ReText(
                                "Flutter Developer",
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                        ],
                      ),
                HorizontalLine(
                  width: isFullSize
                      ? 350
                      : double
                          .infinity, // Adjust the width based on full size or not
                ),
                const Education(),
                Skills(),
              ],
            ),
          ),
        );
      },
    );
  }
}
