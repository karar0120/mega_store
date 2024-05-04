import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/core/routing/routes.dart';
import 'package:mega_store/core/theming/theme_data.dart';

import 'core/routing/app_router.dart';

class MegaApp extends StatelessWidget {
  const MegaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(AppSize.s375, AppSize.s812),
      minTextAdapt: true,
      child: MaterialApp(
        title: AppString.megaStore,
        debugShowCheckedModeBanner: false,
        theme: themeData,
        initialRoute: Routes.loginScreen,
        onGenerateRoute: AppRoute.generateRoute,
      ),
    );
  }
}
