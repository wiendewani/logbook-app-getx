import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loogbook_mobile_app/app/modules/detail_aktivitas/controllers/detail_aktivitas_controller.dart';

import '../../../utils/helper.dart';
import '../../values/colors.dart';

class CustomTextFieldWidget extends GetView<DetailAktivitasController> {
  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (_) => TextField(
        controller: controller.realitaController,
        decoration: InputDecoration(
          hintText: "Masukkan Realita...",
          hintStyle: TextStyle(color: MyColors.textDisable, fontWeight: FontWeight.w500),
          filled: true,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: BorderSide.none,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              5,
            ),
            borderSide: BorderSide.none,
          ),
          fillColor: MyColors.checkColor,
        ),
        maxLines: 5,
        style: TextStyle(
          fontWeight: FontWeight.w500,
          color: MyColors.textPrimary,
        ),
      ),
      onLoading: LoadingWidget(
        height: 100,
      ),
    );
  }
}
