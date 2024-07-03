import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:seru_dadah_taufik/controller/controller.dart';

import '../constant/constant.dart';

class WidgetCardClaim extends GetView<Controller> {
  const WidgetCardClaim({
    Key? key,
    required this.label,
  }) : super(key: key);

  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.w, left: 8.w),
          child: Text(
            label,
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
                color: AppColor.darkBlue),
          ),
        ),
        SizedBox(
          height: 16.h,
        ),
        Container(
          height: 55.h,
          child: Obx(() {
            return ListView.builder(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.horizontal,
              itemCount: controller.cardList.length,
              itemBuilder: (context, index) {
                final cardData = controller.cardList[index];
                return GestureDetector(
                  onTap: () => controller.setSelectedPage(index),
                  child: Container(
                    width: 190.w,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6.r),
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: ShapeDecoration(
                              color: cardData.color,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(6.r),
                                  bottomLeft: Radius.circular(6.r),
                                ),
                              ),
                            ),
                            width: 10.w,
                          ),
                          Expanded(
                            child: ListTile(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 0.w),
                              leading: Container(
                                width: 46.w,
                                alignment: Alignment.center,
                                color: cardData.colorBackground,
                                child: Icon(
                                  cardData.icon,
                                  color: AppColor.primaryColor,
                                  size: 24.sp,
                                ),
                              ),
                              title: Text(
                                cardData.text,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.justify,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            );
          }),
        ),
      ],
    );
  }
}
