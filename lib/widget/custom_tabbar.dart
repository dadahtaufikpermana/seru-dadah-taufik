import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:seru_dadah_taufik/controller/controller.dart';
import 'package:seru_dadah_taufik/widget/tab/tab_register_claim1.dart';
import 'package:seru_dadah_taufik/widget/tab/tab_register_claim2.dart';
import 'package:seru_dadah_taufik/widget/tab/tab_register_claim3.dart';

import '../constant/constant.dart';

class CustomTabbar extends GetView<Controller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 700.h,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TabBar(
              unselectedLabelColor: Colors.black,
              labelColor: AppColor.bodyColor,
              tabs: controller.myTabs,
              indicatorColor: AppColor.primaryColor,
              controller: controller.tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(
                fontSize: 10
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  TabRegisterClaim1(),
                  TabRegisterClaim2(),
                  TabRegisterClaim3(),
                ],
                controller: controller.tabController,
              ),
            ),
          ],
        ),
      ),
    );
  }
}