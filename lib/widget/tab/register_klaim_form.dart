import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:seru_dadah_taufik/constant/constant.dart';
import 'package:seru_dadah_taufik/widget/text_input_widget.dart';
import 'package:seru_dadah_taufik/widget/dropdown_search_widget.dart';

import '../../controller/register_klaim_controller.dart';

class RegisterClaimForm extends StatelessWidget {
  final RegisterClaimController controller = Get.put(RegisterClaimController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.all(20),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(color: AppColor.textPrimary),
            borderRadius: BorderRadius.all(
              Radius.circular(6.r)
            ),
          ),
        ),
        child: Column(
          children: [
            TextInputWidget(
              label: "First Name",
              controller: controller.firstNameController,
            ),
            TextInputWidget(
              label: "Last Name",
              controller: controller.lastNameController,
            ),
            TextInputWidget(
              label: "Biodata",
              controller: controller.biodataController,
              maxLines: 5,
              height: 100,
            ),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return DropdownSearchWidget(
                label: "Provinsi",
                items: provinsiKota.keys.toList(),
                selectedItem: controller.selectedProvinsi.value,
                onChanged: (value) => controller.updateKota(value!),
              );
            }),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return DropdownSearchWidget(
                label: "Kota",
                items: controller.kotaList,
                selectedItem: controller.selectedKota.value,
                onChanged: (value) => controller.updateKecamatan(value!),
              );
            }),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return DropdownSearchWidget(
                label: "Kecamatan",
                items: controller.kecamatanList,
                selectedItem: controller.selectedKecamatan.value,
                onChanged: (value) => controller.updateKelurahan(value!),
              );
            }),
            SizedBox(
              height: 20,
            ),
            Obx(() {
              return DropdownSearchWidget(
                label: "Kelurahan",
                items: controller.kelurahanList,
                selectedItem: controller.selectedKelurahan.value,
                onChanged: (value) =>
                    controller.selectedKelurahan.value = value!,
              );
            }),
          ],
        ),
      ),
    );
  }
}
