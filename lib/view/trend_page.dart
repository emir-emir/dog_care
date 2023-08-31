import 'package:dog_care/constants/color_constant.dart';
import 'package:dog_care/constants/text_constant.dart';
import 'package:dog_care/core/context_extension.dart';
import 'package:dog_care/core/sized_box_extension.dart';
import 'package:dog_care/view/dogs_page.dart';
import 'package:dog_care/view/welcome_page.dart';
import 'package:dog_care/widgets/global_image.dart';
import 'package:dog_care/widgets/global_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants/ımage_url_constant.dart';

class TrendScreen extends StatelessWidget {
  const TrendScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          pawIconTop,
          pawIconBotttom(context),
          Scaffold(
            backgroundColor: AppColors.customTransParentColor,
            appBar: appBarRow,
            body: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                heightSpace10,
                welcomingContainer,
                heightSpace93,
                Column(
                  children: [
                    dogsAndSwipeText,
                    hillAndCircleButton(context),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Stack hillAndCircleButton(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        GlobalImage(
          assetName: UrlImage.button_background_image_url,
          width: context.width / 3,
        ),
        GestureDetector(
          child: CircleAvatar(
            backgroundColor: AppColors.customWhiteColor, // Colors.white,
            radius: context.width / 27,
            child: const Icon(Icons.keyboard_arrow_up, size: 16),
          ),
        ),
      ],
    );
  }

  Stack get dogsAndSwipeText {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Dogs(),
        Positioned(
          bottom: 20,
          child: GlobalText(
            textName: TextName.SWIPE_FOR_MORE,
            fontSize: 12,
            color: AppColors.customBlackColor,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }

  Column get welcomingContainer {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Center(
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              const WelcomePage(),
              Positioned(
                bottom: -10,
                left: 0,
                right: 0,
                child: GlobalText(
                  textAlign: TextAlign.center,
                  textName: TextName.TRENDING,
                  fontSize: 26,
                  color: AppColors.customDarkGreyColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  AppBar get appBarRow {
    return AppBar(
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
      ),
      backgroundColor: AppColors.customTransParentColor,
      titleSpacing: 25,
      title: GlobalText(textName: TextName.HELLO, fontSize: 26, color: AppColors.customDarkGreyColor, fontWeight: FontWeight.bold),
      actions: [
        const GlobalImage(assetName: UrlImage.category_image_url, width: 24, height: 24, color: AppColors.customBlackColor),
        10.w,
        const GlobalImage(assetName: UrlImage.buy_image_url, width: 24, height: 24, color: AppColors.customBlackColor),
        30.w,
      ],
    );
  }

  Positioned pawIconBotttom(BuildContext context) {
    return Positioned(
      right: 15,
      bottom: 15,
      child: GlobalImage(
        assetName: UrlImage.paw2_image_url,
        color: AppColors.customGreyColor,
        width: context.width / 1.7,
        height: context.width / 1.7,
        fit: BoxFit.contain,
      ),
    );
  }

  Positioned get pawIconTop {
    return const Positioned(
      left: 15,
      top: 15,
      child: GlobalImage(
        assetName: UrlImage.paw2_image_url,
        color: AppColors.customGreyColor,
      ),
    );
  }
}
