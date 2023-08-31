import 'package:dog_care/constants/color_constant.dart';
import 'package:dog_care/core/sized_box_extension.dart';
import 'package:dog_care/widgets/global_image.dart';
import 'package:dog_care/widgets/global_text.dart';
import 'package:dog_care/widgets/step_container.dart';
import 'package:flutter/material.dart';

import '../constants/text_constant.dart';
import '../constants/ımage_url_constant.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.customBlueLightColor, //Color(0xff064BB5),
        body: Stack(
          children: [
            heartImage,
            Column(
              children: [
                heightSpace66,
                pawIconAndText,
                titleText,
                subTitleText,
                heightSpace14,
                letsExploreContainer,
                heightSpace44,
                dogImage,
              ],
            ),
            steps,
          ],
        ),
      ),
    );
  }

  Positioned get steps {
    return Positioned(
      bottom: 41,
      left: 20,
      child: Row(
        children: [
          StepContainer(color: AppColors.customWhiteColor),
          widthSpace2,
          StepContainer(color: AppColors.customWhiteColor.withOpacity(0.5)),
          widthSpace2,
          StepContainer(color: AppColors.customWhiteColor.withOpacity(0.5), width: 21),
        ],
      ),
    );
  }

  Expanded get dogImage {
    return const Expanded(
      child: Align(
        alignment: Alignment.bottomRight,
        child: GlobalImage(assetName: UrlImage.dog_4_image_url, fit: BoxFit.fill),
      ),
    );
  }

  Container get letsExploreContainer {
    return Container(
      width: 160,
      height: 54,
      decoration: const BoxDecoration(
        color: AppColors.customLightGreenColor,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(17),
          topLeft: Radius.circular(17),
          bottomRight: Radius.circular(17),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 15),
        child: Expanded(
          child: GlobalText(
            textAlign: TextAlign.center,
            textName: TextName.LETS_EXPLORE,
            fontSize: 16,
            color: AppColors.customBlackColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  GlobalText get subTitleText {
    return GlobalText(
      textName: TextName.CHECK_OUR_LATEST_FASHION_COLLECTION,
      textAlign: TextAlign.center,
      fontSize: 14,
      color: AppColors.customWhiteColor,
      fontWeight: FontWeight.normal,
      shadows: const <Shadow>[
        Shadow(offset: Offset(0, 8.0), blurRadius: 3.0, color: AppColors.customBlueColor),
      ],
    );
  }

  Padding get titleText {
    return Padding(
      padding: const EdgeInsets.only(left: 9, top: 36, bottom: 15),
      child: GlobalText(
        textName: TextName.CHOOSE_DRESS,
        fontSize: 41,
        color: AppColors.customWhiteColor,
        fontWeight: FontWeight.bold,
        shadows: const <Shadow>[
          Shadow(
            offset: Offset(0, 8.0),
            color: AppColors.customGreyLightColor,
          ),
        ],
      ),
    );
  }

  Row get pawIconAndText {
    return Row(
      children: [
        widthSpace26,
        const GlobalImage(assetName: UrlImage.paw_image_url, width: 26, height: 26),
        widthSpace6,
        GlobalText(styleTypePoppins: false, textName: TextName.LOYAL, fontSize: 28, color: AppColors.customWhiteColor, fontWeight: FontWeight.bold),
      ],
    );
  }

  Positioned get heartImage {
    return const Positioned(
      right: 0,
      child: GlobalImage(assetName: UrlImage.hearts_image_url),
    );
  }
}
