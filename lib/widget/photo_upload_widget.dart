import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:seru_dadah_taufik/constant/constant.dart';
import 'dart:io';
import '../../controller/register_klaim_controller.dart';

class PhotoUploadWidget extends StatelessWidget {
  final String label;
  final String labelInfo;
  final Rx<XFile?> imageFile;
  final RegisterClaimController controller = Get.find();

  PhotoUploadWidget({
    Key? key,
    required this.label,
    required this.imageFile,
    required this.labelInfo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            imageFile.value != null
                ? Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                      image: FileImage(File(imageFile.value!.path)),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.red.shade50.withOpacity(0.8),
                      borderRadius: const BorderRadius.only(topLeft: Radius.circular(8),bottomRight: Radius.circular(8)),
                    ),
                    child: IconButton(
                      onPressed: () => controller.removeImage(imageFile),
                      icon: Icon(Icons.delete, color: AppColor.bodyColor.shade50),
                      padding: EdgeInsets.zero,
                      iconSize: 24.0,
                    ),
                  ),
                ),
              ],
            )
                : Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () =>
                    controller.showImageSourceDialog(context, imageFile),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.add_circle_rounded, size: 40, color: AppColor.blueInfo),
                    const SizedBox(height: 10),
                    Text(
                      "Upload $label",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              labelInfo,
              style: const TextStyle(fontSize: 12, color: AppColor.blueInfo),
            ),
          ],
        ),
      );
    });
  }
}