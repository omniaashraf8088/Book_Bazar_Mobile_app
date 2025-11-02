import 'package:books_bazar_app/core/functions/custom_toast.dart';
import 'package:books_bazar_app/core/functions/navigation.dart';
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/widgets/custom_elevated_auth_button.dart';
import 'package:books_bazar_app/features/auth/presentation/model/auth_cubit.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/custom_sign_in_text_form_field.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/forget_password.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomSignInForm extends StatelessWidget {
  const CustomSignInForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignInSuccessState) {
          CustomToastWidget("Sign in successful");
          customNavigation(context, Routes.home);
        } else if (state is SignInFailureState) {
          CustomToastWidget("Sign in failed: ${state.errorMessage}");
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomSignInTextFormField(
                onChanged: (emailAddress) {
                  authCubit.emailAddress = emailAddress;
                },
                headFormText: 'Email',
                hintLabelFormText: 'Your email',
              ),
              SizedBox(height: 16),
              CustomSignInTextFormField(
                onChanged: (password) {
                  authCubit.password = password;
                },
                headFormText: 'Password',
                hintLabelFormText: 'Your password',
                suffixIcon: Icons.visibility_off,
              ),
              SizedBox(height: 16),
              CustomForgetPasswordText(),

              SizedBox(height: 24),
              state is SignInLoadingState
                  ? CircularProgressIndicator(color: AppColors.purple):
              CustomElvatedAuthButton(
                text: 'Login',
                onPressed: () {
                  if (authCubit.signUpFormKey.currentState!.validate()) {
                    authCubit.signUpWithEmailAndPassword();
                    customNavigation(context, Routes.home);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }
}
