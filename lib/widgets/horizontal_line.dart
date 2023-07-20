import 'package:flutter/material.dart';

class HorizontalLine extends StatelessWidget {
  final double? width;
  const HorizontalLine({super.key, this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width, // The line will span the full width of its parent
      height: 1, // Set the height of the line
      color: Colors.white, // Change the color as needed
    );
  }
}
