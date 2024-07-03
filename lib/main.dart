import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:seru_dadah_taufik/routes/app_pages.dart';
import 'package:seru_dadah_taufik/routes/app_routes.dart';

import 'config.dart';
import 'initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Initializer.init();
  final initialRoute = Routes.INITIAL;
  runApp(Main(initialRoute));
}

class Main extends StatelessWidget {
  final String initialRoute;

  const Main(this.initialRoute);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 782),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return EnvironmentsBadge(
          child: GetMaterialApp(
            theme: ThemeData(fontFamily: "Montserrat"),
            getPages: AppPages.pages,
            initialRoute: initialRoute,
          ),
        );
      },
    );
  }
}

class EnvironmentsBadge extends StatelessWidget {
  final Widget child;

  const EnvironmentsBadge({required this.child});

  @override
  Widget build(BuildContext context) {
    final env = ConfigEnvironments.getEnvironments()['env'];
    return env != Environments.PRODUCTION
        ? Banner(
      location: BannerLocation.topStart,
      message: env!,
      color: env == Environments.QAS ? Colors.blue : Colors.purple,
      child: child,
    )
        : SizedBox(child: child);
  }
}
