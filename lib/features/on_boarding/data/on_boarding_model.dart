import 'package:books_bazar_app/core/utils/assets.gen.dart';

class OnBoardingModel {
  String image;
  String title;
  String body;

  OnBoardingModel({
    required this.image,
    required this.title,
    required this.body,
  });
}

List<OnBoardingModel> onBoardingListData = [
  OnBoardingModel(
    image: Assets.images.onBoarding1.path,
    title: 'Now reading books will be easier',
    body:
        ' Discover new worlds, join a vibrant reading community. Start your reading adventure effortlessly with us.',
  ),
  OnBoardingModel(
    image: Assets.images.onBoarding2.path,
    title: 'Your Bookish Soulmate Awaits',
    body:
        'Let us be your guide to the perfect read. Discover books tailored to your tastes for a truly rewarding experience.',
  ),
  OnBoardingModel(
    image: Assets.images.onBoarding3.path,
    title: 'Start Your Adventure',
    body:
        "Ready to embark on a quest for inspiration and knowledge? Your adventure begins now. Let's go!",
  ),
];
