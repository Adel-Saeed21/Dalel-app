import 'package:dalel/core/utils/app_assets.dart';
import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/custom_smooth_page_indecator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  OnBoardingWidgetBody({super.key});
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,

      child: PageView.builder(
        physics: const BouncingScrollPhysics(),
        controller: _controller,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(Assets.assetsImagesOnBoarding1),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: _controller),
              const SizedBox(height: 32),

              Text(
                "Exploure The History  with Dalel in smart way ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.poppins500Style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              const Text(
                "test run project",
                style: AppTextStyle.poppins300Style16,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          );
        },
      ),
    );
  }
}
