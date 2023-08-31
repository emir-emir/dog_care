import 'package:flutter/widgets.dart';

class CustomClip extends CustomClipper<Path> {
  final double radius;
  final double edgeRadius;
  final double lineWidth;

  const CustomClip({
    this.radius = 100,
    this.edgeRadius = 10,
    this.lineWidth = 50,
  });

  @override
  Path getClip(Size size) {
    Path path = Path();
    path
      ..moveTo(size.width / 2, 0)
      ..arcToPoint(
        Offset(size.width, size.height - edgeRadius), //size.height =container dan gelen yükseklik kadar cigi ciziyor
        radius: Radius.circular(radius),
      )
      ..arcToPoint(
        Offset(size.width - edgeRadius, size.height),
        radius: Radius.circular(edgeRadius),
      ) // r
      ..lineTo(size.width - lineWidth + edgeRadius, size.height)
      ..arcToPoint(
        Offset(size.width - lineWidth, size.height - edgeRadius),
        radius: Radius.circular(edgeRadius),
      ) // r
      ..arcToPoint(
        Offset(size.width / 2, lineWidth),
        radius: Radius.circular(radius - lineWidth),
        clockwise: false,
      )
      ..arcToPoint(
        Offset(lineWidth, size.height - edgeRadius),
        radius: Radius.circular(radius - lineWidth),
        clockwise: false,
      )
      ..arcToPoint(
        Offset(lineWidth - edgeRadius, size.height),
        radius: Radius.circular(edgeRadius),
      ) // r
      ..lineTo(edgeRadius, size.height) // iki nokta arasında bir doğru çizmek için kullanılır.
      ..arcToPoint(
        Offset(0, size.height - edgeRadius),
        radius: Radius.circular(edgeRadius),
      ) // r
      ..arcToPoint(
        Offset(size.width / 2, 0),
        radius: Radius.circular(radius),
      )
      ..close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true; //getClip fonksiyonunun tekrar tetiklenmesi sağlanır.Geliştirme aşamasındayken hot reload özelliğinden faydalanmak için “true” olmalı.
  }
}
