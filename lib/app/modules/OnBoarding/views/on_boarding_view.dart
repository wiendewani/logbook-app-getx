
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:loogbook_mobile_app/app/modules/OnBoarding/views/widgets/page_one.dart';
import 'package:loogbook_mobile_app/app/modules/OnBoarding/views/widgets/page_three.dart';
import 'package:loogbook_mobile_app/app/modules/OnBoarding/views/widgets/page_two.dart';
import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        page_one(),
        page_two(),
        page_three()
      ],
    );
  }
}
