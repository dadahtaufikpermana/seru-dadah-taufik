import 'package:flutter/material.dart';
import 'package:seru_dadah_taufik/widget/tab/register_klaim_form.dart';
import '../../constant/constant.dart';
class TabRegisterClaim1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 24),
          child: Container(
            padding: EdgeInsets.only(left: 12, right: 15, top: 10, bottom: 10),
            decoration: ShapeDecoration(
              color: AppColor.blueInfo,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Registrasi Klaim B 12345 EFG",
                    softWrap: true,
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: RegisterClaimForm(),
        ),
      ],
    );
  }
}
