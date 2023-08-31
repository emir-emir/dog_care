import 'package:flutter/material.dart';

class GlobalImage extends StatelessWidget {
  const GlobalImage({
    required this.assetName,
    this.width,
    this.height,
    this.color,
    this.fit,
    super.key,
  });

  final String assetName;
  final double? width;
  final double? height;
  final Color? color;
  final BoxFit? fit;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      assetName,
      color: color,
      width: width,
      height: height,
      fit: fit,
    );
  }
}
