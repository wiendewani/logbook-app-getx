import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../theme/PaletteColor.dart';
import '../../../../../theme/SpacingDimens.dart';
import '../../../../../theme/TypographyStyle.dart';

class page_one extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: Get.height,
      color: PaletteColor.primaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: SpacingDimens.spacing64,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: SpacingDimens.spacing20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: PaletteColor.secondColor,
                  width: 100,
                  height: 4,
                ),
                Container(
                  color: PaletteColor.grey40,
                  width: 100,
                  height: 4,
                ),
                Container(
                  color: PaletteColor.grey40,
                  width: 100,
                  height: 4,
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/images/on_boarding_1.svg'),
                const SizedBox(
                  height: SpacingDimens.spacing16,
                ),
                Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: SpacingDimens.spacing44),
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mi vitae lacus leo sapien \n viverra.",
                    style: TypographyStyle.subtitle2.copyWith(
                        color: PaletteColor.white,
                        decoration: TextDecoration.none),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: SpacingDimens.spacing64),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Text("Lewati",
                  style: TypographyStyle.subtitle1.copyWith(
                      fontSize: 16,
                      decoration: TextDecoration.none,
                      color: PaletteColor.white)),
            ),
          )
        ],
      ),
    );
  }
}
