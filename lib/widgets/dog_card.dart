import 'package:dog_care/core/context_extension.dart';
import 'package:dog_care/widgets/global_image.dart';
import 'package:flutter/material.dart';

class DogCard extends StatelessWidget {
  final double angle;
  final String path;
  final double? width;
  final double? height;

  const DogCard({
    super.key,
    this.angle = 0,
    required this.path,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
        angle: angle,
        child: GlobalImage(
          assetName: path,
          width: width ?? context.width - 150,
          height: height,
        ));
  }
}
