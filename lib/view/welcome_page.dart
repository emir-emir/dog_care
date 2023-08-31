import 'dart:math';

import 'package:dog_care/constants/color_constant.dart';
import 'package:dog_care/constants/text_constant.dart';
import 'package:dog_care/core/context_extension.dart';
import 'package:flutter/material.dart';

import 'arc_text_page.dart';
import 'custom_clip_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
          clipper: CustomClip(
            radius: context.width / 2 - 30,
            lineWidth: 60,
          ),
          child: Container(
            width: context.width - 60,
            height: context.width / 2 - 30,
            color: AppColors.customLightGreenColor, // Color(0xffBAFC5D),
          ),
        ),
        Container(
          padding: EdgeInsets.only(top: 165),
          width: context.width - 60,
          height: (context.width - 60) / 2,
          child: ArcText(
            radius: (context.width / 3.2),
            text: TextName.WELCOME_TO_THE_DOGS_FASHION,
            textStyle: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            startAngle: -pi / 2 + 0.07,
          ),
        ),
      ],
    );
  }
}
