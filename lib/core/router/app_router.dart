part of 'router_expert.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => const OnBordingScreen());

      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

      case Routes.signIn:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: const SignInScreen(),
          ),
        );

      case Routes.signUp:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AuthCubit>(),
            child: const SignUpScreen(),
          ),
        );

      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordScreen());

      case Routes.resetPasswordByEmail:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordByEmailScreen(),
        );

      case Routes.resetPasswordByPhoneNum:
        return MaterialPageRoute(
          builder: (_) => const ResetPasswordByPhoneNum(),
        );

      case Routes.verficationEmailScreen:
        return MaterialPageRoute(
          builder: (_) => const VerficationEmailScreen(),
        );

      case Routes.registerPhoneNumber:
        return MaterialPageRoute(
          builder: (_) => const RegisterPhoneNumberScreen(),
        );

      case Routes.verifyPhoneCode:
        return MaterialPageRoute(builder: (_) => const VerifyPhoneCodeScreen());

      case Routes.newPassword:
        return MaterialPageRoute(builder: (_) => const NewPasswordScreen());

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
