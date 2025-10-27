import 'package:books_bazar_app/core/functions/navigation.dart';
import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:books_bazar_app/features/on_boarding/data/on_boarding_model.dart';
import 'package:books_bazar_app/features/on_boarding/presentation/screen/function/onboarding.dart';
import 'package:books_bazar_app/features/on_boarding/presentation/widgets/custom_onboarding_button.dart';
import 'package:books_bazar_app/features/on_boarding/presentation/widgets/custom_smooth_page_indecator.dart';
import 'package:flutter/material.dart';

class OnBoardingBody extends StatefulWidget {
  OnBoardingBody({super.key, required this.onPageChanged});

  final VoidCallback onPageChanged;

  @override
  State<OnBoardingBody> createState() => _OnBoardingBodyState();
}

class _OnBoardingBodyState extends State<OnBoardingBody> {
  final PageController pageController = PageController(initialPage: 0);
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: PageView.builder(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                currentIndex = index;
              });
              widget.onPageChanged();
            },
            itemCount: onBoardingListData.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: Column(
                  children: [
                    SizedBox(
                      width: 320,
                      height: 320,
                      child: Image.asset(
                        onBoardingListData[index].image,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      onBoardingListData[index].title,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.headingText24,
                    ),
                    SizedBox(height: 12),
                    Text(
                      onBoardingListData[index].body,
                      textAlign: TextAlign.center,
                      maxLines: 3,
                      style: AppTextStyle.gray16w400,
                    ),
                    SizedBox(height: 26),
                    Center(
                      child: CustomSmoothPageIndecator(
                        pageController: pageController,
                      ),
                    ),
                    SizedBox(height: 26),
                    CustomElevatedOnboardingButton(
                      text: currentIndex == onBoardingListData.length - 1
                          ? 'Get Started'
                          : 'Continue',
                      onPressed: () {
                        if (currentIndex == onBoardingListData.length - 1) {
                          customNavigation(context, "/home");
                        } else {
                          pageController.nextPage(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.easeInOut,
                          );
                        }
                      },
                      color: AppColors.purple,
                    ),
                    SizedBox(height: 12),
                    CustomElevatedOnboardingButton(
                      text: 'Sign in',
                      onPressed: () {
                       onBoardingMethod();
                        customNavigation(context, "/signIn");
                      },
                      color: AppColors.white,
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
