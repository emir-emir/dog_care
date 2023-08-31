import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GlobalText extends StatelessWidget {
  GlobalText({
    super.key,
    required this.textName,
    required this.color,
    this.fontWeight,
    this.fontSize,
    this.styleTypePoppins = true,
    this.shadows,
    this.textAlign,
  });

  final String textName;
  final Color color;
  final FontWeight? fontWeight;
  final double? fontSize;
  final bool? styleTypePoppins;
  final List<Shadow>? shadows;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      textAlign: textAlign,
      style: styleTypePoppins == true
          ? GoogleFonts.poppins(
              fontSize: fontSize,
              color: color,
              fontWeight: fontWeight,
              shadows: shadows,
            )
          : GoogleFonts.philosopher(
              fontSize: fontSize,
              color: color,
              fontWeight: fontWeight,
              shadows: shadows,
            ),
    );
  }
}
