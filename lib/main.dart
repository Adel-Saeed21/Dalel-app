import 'package:dalel/core/database/cache/cache_helper.dart';
import 'package:dalel/core/services/service_locator.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_route.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setUpServiceLocator();
  await getIT<CacheHelper>().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(scaffoldBackgroundColor: AppColors.offWhite),
      debugShowCheckedModeBanner: false,
      routerConfig: route,
    );
  }
}
