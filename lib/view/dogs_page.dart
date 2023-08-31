import 'package:dog_care/widgets/dog_card.dart';
import 'package:flutter/material.dart';

import '../constants/ımage_url_constant.dart';

class Dogs extends StatelessWidget {
  const Dogs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      clipBehavior: Clip.none,
      children: [
        DogCard(
          path: UrlImage.dog_3_image_url,
          height: 290,
        ),
        DogCard(
          path: UrlImage.dog_2_image_url,
        ),
        DogCard(
          path: UrlImage.dog_1_image_url,
        ),
      ],
    );
  }
}
