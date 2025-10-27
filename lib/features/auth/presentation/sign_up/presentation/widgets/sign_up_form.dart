import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/sign_in_form.dart';
import 'package:flutter/material.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SignInForm(labelFormText: 'Name', hintLabelFormText: 'Your name'),
        SignInForm(labelFormText: 'Email', hintLabelFormText: 'Your email'),
        SignInForm(
          labelFormText: 'Password',
          hintLabelFormText: 'Your password',
          suffixIcon: Icons.visibility_off,
        ),
      ],
    );
  }
}
