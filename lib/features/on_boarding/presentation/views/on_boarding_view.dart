import 'package:dalel/core/utils/app_colors.dart';
import 'package:dalel/core/utils/app_strings.dart';
import 'package:dalel/core/widgets/custom_button.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/custom_nav_bar.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/on_boarding_widget_view.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({super.key});

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {
  final PageController _controller = PageController(initialPage: 0);
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView(
            physics: const BouncingScrollPhysics(),
            children: [
              const SizedBox(height: 40),
              const CustomNavBar(),
              OnBoardingWidgetBody(
                controller: _controller,
                onPageChanged: (p0) {
                  setState(() {
                    index = p0;
                  });
                },
              ),

              index != onBoardingData.length - 1
                  ? Column(
                    children: [
                      const SizedBox(height: 200),
                      CustomButton(
                        text: AppStrings.next,
                        onPressed: () {
                          _controller.nextPage(
                            duration: const Duration(seconds: 1),
                            curve: Curves.bounceIn,
                          );
                        },
                      ),
                    ],
                  )
                  : Column(
                    children: [
                     const SizedBox(height: 150),
                      CustomButton(
                        text: "Sign In",
                        color: AppColors.primaryColor,
                        onPressed: () {
                          debugPrint("Sign In pressed!");
                        },
                      ),

                    const  SizedBox(height: 20),
                       CustomButton(
                        text: "Sign up",
                        color: AppColors.primaryColor,
                        onPressed: () {
                          debugPrint("Sign In pressed!");
                        },
                      ),
                    ],
                  ),
              const SizedBox(height: 17),
            ],
          ),
        ),
      ),
    );
  }
}
