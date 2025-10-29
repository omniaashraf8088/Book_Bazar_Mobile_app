import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class LabelHeadingText extends StatelessWidget {
  const LabelHeadingText({
    super.key,
    required this.labelHeadingText,
    required this.subTitleHeadingText,
    this.isHeadingLabelInCenter = true,
     this.isSubTitleInCenter = true,
  });
  final String labelHeadingText;
  final String subTitleHeadingText;
  final bool isHeadingLabelInCenter;
   final bool isSubTitleInCenter;


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: isHeadingLabelInCenter
          ? CrossAxisAlignment.center
          : CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 4),
        Text(
          labelHeadingText,
          style: AppTextStyle.headingText24,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          subTitleHeadingText,
          style: AppTextStyle.gray16w400,
          textAlign: isSubTitleInCenter ? TextAlign.center : TextAlign.start,
        ),
      ],
    );
  }
}
