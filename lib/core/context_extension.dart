import 'package:flutter/material.dart';

extension MyBuildContext on BuildContext {
  Size get screenSize => MediaQuery.sizeOf(this);

  double get width => screenSize.width;
  double get height => screenSize.height;
}
