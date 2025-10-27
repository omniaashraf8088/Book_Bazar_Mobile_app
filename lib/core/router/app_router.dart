part of 'router_expert.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.onBoarding:
        return MaterialPageRoute(builder: (_) => OnBordingScreen());

      case Routes.home:
        return MaterialPageRoute(builder: (_) => HomScreen());

      case Routes.signIn:
        return MaterialPageRoute(builder: (_) => SignInScreen());

      case Routes.signUp:
        return MaterialPageRoute(builder: (_) => SignUpScreen());

      case Routes.forgetPassword:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());

      case Routes.verficationEmailScreen:
        return MaterialPageRoute(builder: (_) => VerficationEmailScreen());

      case Routes.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());

      case Routes.verifyPhoneCode:
        return MaterialPageRoute(builder: (_) => const VerifyPhoneCodeScreen());

      case Routes.resetPhoneNumber:
        return MaterialPageRoute(
          builder: (_) => const ResetPhoneNumberScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('Route not found'))),
        );
    }
  }
}
