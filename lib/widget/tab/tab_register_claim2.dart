import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seru_dadah_taufik/widget/photo_upload_widget.dart';

import '../../controller/register_klaim_controller.dart';

class TabRegisterClaim2 extends StatelessWidget {
  final RegisterClaimController controller = Get.put(RegisterClaimController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          PhotoUploadWidget(
            label: "Foto Selfie",
            imageFile: controller.selfiePhoto,
            labelInfo: "*Data Pada Poto Selfie Harus Terlihat Jelas",
          ),
          PhotoUploadWidget(
            label: "Foto KTP",
            imageFile: controller.ktpPhoto,
            labelInfo: "*Data Pada Poto Selfie Harus Terlihat Jelas",
          ),
          PhotoUploadWidget(
            label: "Foto Bebas",
            imageFile: controller.bebasPhoto,
            labelInfo: "*Data Pada Poto Selfie Harus Terlihat Jelas",
          ),
        ],
      ),
    );
  }
}
