import 'package:dalel/core/functions/navigation.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class AuthOnBoardingPage extends StatelessWidget {
  const AuthOnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 150),
        CustomButton(
          text: "Sign In",
          color: AppColors.primaryColor,
          onPressed: () {
            debugPrint("Sign In pressed!");
          },
        ),

        const SizedBox(height: 20),
        CustomButton(
          text: "Sign up",
          color: AppColors.primaryColor,
          onPressed: () {
            customNavigateReplace(context, "/signUp");
            debugPrint("Sign In pressed!");
          },
        ),
      ],
    );
  }
}
