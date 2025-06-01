import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SpalshView extends StatefulWidget {
  const SpalshView({super.key});

  @override
  State<SpalshView> createState() => _SpalshViewState();
}

class _SpalshViewState extends State<SpalshView> {
  @override
  void initState()  {
    delayedNavigate(context);

    super.initState();
  }

 

 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(AppStrings.appName, style: AppTextStyle.pacifico400style64),
      ),
    );
  }
}

 void delayedNavigate(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      customNavigate(context,'/onBoarding');
    });
  }