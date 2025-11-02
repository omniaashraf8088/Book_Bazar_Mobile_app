import 'package:books_bazar_app/core/functions/custom_toast.dart';
import 'package:books_bazar_app/core/router/routes.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_in/presentation/widgets/custom_sign_in_text_form_field.dart';
import 'package:books_bazar_app/features/auth/presentation/model/auth_cubit.dart';
import 'package:books_bazar_app/features/auth/presentation/sign_up/presentation/widgets/sign_up_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:books_bazar_app/core/functions/navigation.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthCubit, AuthState>(
      listener: (context, state) {
        if (state is SignUpSuccessState) {
          CustomToastWidget('Sign up successful');
          customNavigation(context, Routes.home);
        } else if (state is SignUpFailureState) {
          CustomToastWidget('Sign up failed: ${state.errorMessage}');
        }
      },
      builder: (context, state) {
        AuthCubit authCubit = BlocProvider.of<AuthCubit>(context);
        return Form(
          key: authCubit.signUpFormKey,
          child: Column(
            children: [
              CustomSignInTextFormField(
                headFormText: 'Name',
                hintLabelFormText: authCubit.userName ?? '',
                onChanged: (value) => authCubit.userName = value,
              ),
              CustomSignInTextFormField(
                headFormText: 'Email',
                hintLabelFormText: authCubit.emailAddress ?? '',
                onChanged: (value) => authCubit.emailAddress = value,
              ),
              CustomSignInTextFormField(
                headFormText: 'Password',
                hintLabelFormText: authCubit.password ?? '',
                suffixIcon: Icons.visibility_off,
                onChanged: (value) => authCubit.password = value,
              ),
              const SizedBox(height: 24),
              state is SignInLoadingState
                  ? CircularProgressIndicator(color: Colors.red)
                  : SignUpButton(),
            ],
          ),
        );
      },
    );
  }
}
