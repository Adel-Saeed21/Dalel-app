import 'package:dalel/core/functions/spacing.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: verticalSpace(50)),
            const SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  AppStrings.welcome,
                  style: AppTextStyle.poppins600style28,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
