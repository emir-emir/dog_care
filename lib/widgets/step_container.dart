import 'package:flutter/material.dart';

class StepContainer extends StatelessWidget {
  StepContainer({
    super.key,
    this.width = 10,
    this.color = Colors.white,
  });

  final double width;

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 5,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          )),
    );
  }
}
