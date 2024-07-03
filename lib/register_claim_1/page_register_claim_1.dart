import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widget/custom_tabbar.dart';
import '../widget/widget_card_claim.dart';

class PageRegisterClaim extends StatelessWidget {
  const PageRegisterClaim({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              const SliverAppBar(
                floating: true,
                pinned: true,
                toolbarHeight: 20.0,
                elevation: 0,
                backgroundColor: Colors.white,
                automaticallyImplyLeading: false,
                flexibleSpace: Center(),
              ),
            ];
          },
          body: Column(
            children: [
              const WidgetCardClaim(
                label: "Registrasi Klaim",
              ),
              SizedBox(
                height: 20.h,
              ),
              Expanded(
                child: CustomTabbar(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
