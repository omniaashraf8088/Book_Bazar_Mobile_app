import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/utils/assets.gen.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/check_have_account.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/custom_soical_media_button.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/forget_password.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/label_heading_text.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/row_for_or_divider.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          LabelHeadingText(
            labelHeadingText: 'Welcome Back 👋',
            subTitleHeadingText: 'Sign to your account',
          ),
          SizedBox(height: 24),
          SignInForm(labelFormText: 'Email', hintLabelFormText: 'Your email'),
          SizedBox(height: 16),
          SignInForm(
            labelFormText: 'Password',
            hintLabelFormText: 'Your password',
            suffixIcon: Icons.visibility_off,
          ),
          SizedBox(height: 16),
          CustomForgetPasswordText(),

          SizedBox(height: 24),
          CustomElvatedAuthButton(text: 'Login', onPressed: () {}),
          SizedBox(height: 24),

          CheckHaveAccount(
            textAsk: "Don't have an account?",
            textAction: " Sign Up",
            onTap: () {
              print('Navigating to sign up screen'); // Debug print
              Navigator.pushNamed(context, Routes.signUp);
            },
          ),
          SizedBox(height: 26),
          RowForOrDivider(),

          SizedBox(height: 26),
          CustomSoicalMediaButton(
            imageAsset: Assets.iconsImages.googleOriginal,
            buttonText: 'Sign in with Google',
          ),
          SizedBox(height: 8),
          CustomSoicalMediaButton(
            imageAsset: Assets.iconsImages.appleIcon,
            buttonText: 'Sign in with Apple',
          ),
        ],
      ),
    );
  }
}
