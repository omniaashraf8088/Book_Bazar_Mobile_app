import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/label_heading_text.dart';
import 'package:flutter/material.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const LabelHeadingText(
      labelHeadingText: 'Sign Up',
      subTitleHeadingText: 'Create account and choose favorite menu',
    );
  }
}
