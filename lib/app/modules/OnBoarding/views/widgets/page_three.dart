import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../../../../../theme/PaletteColor.dart';
import '../../../../../theme/SpacingDimens.dart';
import '../../../../../theme/TypographyStyle.dart';
import '../../../homepage/views/homepage_view.dart';


class page_three extends StatelessWidget {
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
                  color: PaletteColor.grey40,
                  width: 100,
                  height: 4,
                ),
                Container(
                  color: PaletteColor.grey40,
                  width: 100,
                  height: 4,
                ),
                Container(
                  color: PaletteColor.secondColor,
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
                SvgPicture.asset('assets/images/on_boarding_3.svg'),
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
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal:SpacingDimens.spacing20 ),
                width: double.infinity,
                height: 62.0,
                child: TextButton(
                  onPressed: (){
                    Get.to(()=>HomepageView());
                  },
                  style: TextButton.styleFrom(backgroundColor: PaletteColor.white),

                  child: Text("Mulai",
                      style: TypographyStyle.subtitle0.copyWith(
                          fontSize: 16,
                          decoration: TextDecoration.none,
                          color: PaletteColor.primaryColor)),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
