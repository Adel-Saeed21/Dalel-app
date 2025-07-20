import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DalelApp extends StatelessWidget {
  const DalelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812), // حسب التصميم بتاعك (مثلاً Figma)
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
          debugShowCheckedModeBanner: false,
          routerConfig: route,
        );
      },
    );
  }
}
