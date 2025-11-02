import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/check_have_account.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_up/presentation/widgets/sign_up_form.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_up/presentation/widgets/sign_up_header.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_up/presentation/widgets/terms_and_condition.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Expanded(
            child: ListView(
              children: [
                const SignUpHeader(),
                const SizedBox(height: 24),
                const SignUpForm(),
                const SizedBox(height: 24),
                CheckHaveAccount(
                  textAsk: 'Have an account?',
                  textAction: ' Sign In',
                  onTap: () {
                    Navigator.pushNamed(context, Routes.signIn);
                  },
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),

          const Center(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 16),
              child: TermsAndCondition(),
            ),
          ),
        ],
      ),
    );
  }
}
