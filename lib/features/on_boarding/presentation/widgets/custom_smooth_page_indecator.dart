import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomSmoothPageIndecator extends StatelessWidget {
  const CustomSmoothPageIndecator({
    super.key,
    required this.pageController,
    this.count = 3,
  });

  final PageController pageController;
  final int count;

  @override
  Widget build(BuildContext context) {
    return SmoothPageIndicator(
      controller: pageController,
      count: count,
      axisDirection: Axis.horizontal,
      effect: ScaleEffect(
        dotWidth: 6,
        dotHeight: 6,
        dotColor: AppColors.lightPurpel,
        activeDotColor: AppColors.purple,
        scale: 1.5, // Makes active dot 1.5x bigger in all directions
        spacing: 8,
      ),
    );
  }
}
