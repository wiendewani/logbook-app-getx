import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loogbook_mobile_app/app/modules/values/strings.dart';

import '../../../utils/helper.dart';
import '../../values/colors.dart';
import '../controllers/detail_aktivitas_controller.dart';

class ListKategoriWidget extends GetView<DetailAktivitasController> {
  @override
  Widget build(BuildContext context) {
    var listKategoriCard = List.generate(
      MyList.listKategoriName.length,
      (int index) {
        return listKategoriIndex(
          MyList.listKategoriName[index],
          index + 1,
        );
      },
    );
    return controller.obx(
      (_) => GridView.count(
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        childAspectRatio: 2 / .7,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 3,
        children: listKategoriCard,
      ),
      onLoading: LoadingWidget(
        height: 100,
      ),
    );
  }

  Widget listKategoriIndex(String tittle, int index) {
    return Container(
      child: Obx(
        () => ElevatedButton(
          onPressed: () {
            controller.selectedKategori.value = index;
            controller.onKategoriSelected = tittle;
          },
          style: ElevatedButton.styleFrom(
            side: BorderSide(color: MyColors.primaryColor),
            shadowColor: Colors.white,
            primary: controller.selectedKategori.value == index
                ? MyColors.primaryColor
                : Colors.white,
          ),
          child: Text(
            tittle,
            style: TextStyle(
              fontWeight: FontWeight.w700,
              color: controller.selectedKategori.value == index
                  ? Colors.white
                  : MyColors.textPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
