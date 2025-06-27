import 'package:dalel/core/functions/spacing.dart';
import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/auth/presentation/widgets/custom_text_field.dart';
import 'package:dalel/features/auth/presentation/widgets/terms_And_condition.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool isSecure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.offWhite,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(child: verticalSpace(120.h)),
              const SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    AppStrings.welcome,
                    style: AppTextStyle.poppins600style28,
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextField(
                  labelText: AppStrings.fristName,
                  labelTextStyle: AppTextStyle.pacifico500style18Grey,
                  borderRadius: 16,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextField(
                  labelText: AppStrings.lastName,
                  labelTextStyle: AppTextStyle.pacifico500style18Grey,
                  borderRadius: 16,
                ),
              ),
              SliverToBoxAdapter(
                child: CustomTextField(
                  labelText: AppStrings.emailAddress,
                  labelTextStyle: AppTextStyle.pacifico500style18Grey,
                  borderRadius: 16,
                ),
              ),

              SliverToBoxAdapter(
                child: CustomTextField(
                  labelText: AppStrings.password,
                  labelTextStyle: AppTextStyle.pacifico500style18Grey,
                  borderRadius: 16,
                  suffixIcon: GestureDetector(
                    onTap: () {
                      setState(() {
                        isSecure = !isSecure;
                      });
                    },
                    child:
                        isSecure
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                  ),
                  isObscure: isSecure,
                ),
              ),
              const SliverToBoxAdapter(child: TermsAndConditoins()),
              SliverToBoxAdapter(child: verticalSpace(88.h)),

              SliverToBoxAdapter(
                child: CustomButton(text: "Register", onPressed: () {}),
              ),
              SliverToBoxAdapter(child: verticalSpace(20.h)),
              const SliverToBoxAdapter(
                child: Align(
                  alignment: Alignment.center,
                  child: HaveAnAccount(
                    text1: AppStrings.alreadyHaveAnAccount,
                    text2: AppStrings.signIn,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class HaveAnAccount extends StatelessWidget {
  const HaveAnAccount({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(text: text1, style: AppTextStyle.poppins400style12),
          TextSpan(
            text: text2,
            style: AppTextStyle.poppins400style12.copyWith(
              color: AppColors.lightGrey,
            ),
          ),
        ],
      ),
    );
  }
}
