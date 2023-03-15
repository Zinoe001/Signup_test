import 'package:flutter/material.dart';
import 'package:sign_up_app/core/navigation/routes_name.dart';
import 'package:sign_up_app/view/auth/sign_up_view.dart';
import 'package:sign_up_app/view/home/home_view.dart';

class AppRouter {
  static PageRoute _getPageRoute({
    // ignore: unused_element
    RouteSettings? settings,
    required Widget viewToShow,
    // ignore: unused_element
    Object? arguments,
  }) {
    return MaterialPageRoute(builder: (context) => viewToShow);
  }

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SignUpViewRoute:
        return _getPageRoute(viewToShow: const SignUpView());
      case HomeViewRoute:
        return _getPageRoute(viewToShow: const HomeView());
      // case LoginViewRoute:
      //   return _getPageRoute(viewToShow: const LoginView() );
      // case VerificationViewRoute:
      //   return _getPageRoute(viewToShow: const VerificationView());
      // case CreateAccountViewRoute:
      //   return _getPageRoute(viewToShow: const CreateAccountView());
      // case ForgotPasswordViewRoute:
      //   return _getPageRoute(viewToShow: const ForgotPasswordView());
      // case ResetPasswordViewRoute:
      //   return _getPageRoute(viewToShow: const ResetPasswordView());
      default:
        return _getPageRoute(viewToShow: const Scaffold());
    }
  }
}
