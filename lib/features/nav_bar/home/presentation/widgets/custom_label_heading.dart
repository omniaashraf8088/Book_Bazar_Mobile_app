import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomLabelHeading extends StatelessWidget {
  const CustomLabelHeading({super.key, required this.title, required this.subtitle});
  final String title ;
  final String subtitle ;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style:AppTextStyle.mediumHeadingText18,),
        
        Text(subtitle, style: AppTextStyle.linkTextPurple14),

      ],
    );
  }
}