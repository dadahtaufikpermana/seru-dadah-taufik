import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:io';
import '../../constant/constant.dart';
import '../../controller/register_klaim_controller.dart';

class TabRegisterClaim3 extends StatelessWidget {
  final RegisterClaimController controller = Get.put(RegisterClaimController());

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        padding: EdgeInsets.only(left: 12, right: 15, top: 10, bottom: 10),
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: AppColor.blueInfo
            ),
            borderRadius: BorderRadius.circular(4),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Summary',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            buildRow('First Name', ": ${controller.firstNameController.text}"),
            buildRow('Last Name', ": ${controller.lastNameController.text}"),
            buildRow('Biodata',  ": ${controller.biodataController.text}"),
            buildRow('Provinsi',  ": ${controller.selectedProvinsi.value}"),
            buildRow('Kota',  ": ${controller.selectedKota.value}"),
            buildRow('Kecamatan',  ": ${controller.selectedKecamatan.value}"),
            buildRow('Kelurahan',  ": ${controller.selectedKelurahan.value}"),
            SizedBox(height: 20),
            Text(
              'Foto Selfie :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            controller.selfiePhoto.value != null
                ? Image.file(
              File(controller.selfiePhoto.value!.path),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            )
                : Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {  },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Anda Belum Mengupload Foto",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Foto KTP :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            controller.ktpPhoto.value != null
                ? Image.file(
              File(controller.ktpPhoto.value!.path),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            )
                : Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {  },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Anda Belum Mengupload Foto",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Foto Bebas :',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
            controller.bebasPhoto.value != null
                ? Image.file(
              File(controller.bebasPhoto.value!.path),
              height: 150,
              width: double.infinity,
              fit: BoxFit.cover,
            )
                : Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {  },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 10),
                    Text(
                      "Anda Belum Mengupload Foto",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 2,
            child: Text(
              '$label',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.blue),
            ),
          ),
          Expanded(
            flex: 3,
            child: Text(
              value,
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
