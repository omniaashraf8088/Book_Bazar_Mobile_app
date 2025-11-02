import 'package:books_bazar_app/core/functions/navigation.dart';
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/features/auth/presentation/model/auth_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpButton extends StatelessWidget {
  const SignUpButton({super.key, this.onPressed, });

  final VoidCallback? onPressed;


  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();
    return CustomElvatedAuthButton(
      
      text: 'Register',
      onPressed: () {
        final formState = authCubit.signUpFormKey.currentState;
        if (formState != null && formState.validate()) {
          authCubit.signUpWithEmailAndPassword();
            customNavigation(context, Routes.home);
        } else if (formState == null) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(const SnackBar(content: Text('Form not found!')));
        }
      },
    );
  }
}
