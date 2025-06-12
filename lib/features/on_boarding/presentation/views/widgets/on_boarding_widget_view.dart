import 'package:dalel/core/utils/app_text_style.dart';
import 'package:dalel/features/on_boarding/data/models/on_boarding_model.dart';
import 'package:dalel/features/on_boarding/presentation/views/widgets/custom_smooth_page_indecator.dart';
import 'package:flutter/material.dart';

class OnBoardingWidgetBody extends StatelessWidget {
  const OnBoardingWidgetBody({super.key, required this.controller, this.onPageChanged});
  final PageController controller;
  final void Function(int)?onPageChanged;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,

      child: PageView.builder(
        onPageChanged: onPageChanged,
        itemCount: onBoardingData.length,
        physics: const BouncingScrollPhysics(),
        controller: controller,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 290,
                width: 343,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(onBoardingData[index].imagePath),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              CustomSmoothPageIndicator(controller: controller),
              const SizedBox(height: 32),

              Text(
                onBoardingData[index].title,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.poppins500Style24.copyWith(
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 12),

              Text(
                onBoardingData[index].subTitle,
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
