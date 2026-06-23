import 'package:flutter/material.dart';
import 'package:job_spot/core/common/pages/not_found_page.dart';
import 'package:job_spot/core/utils/routes/app_routes.dart';
import 'package:job_spot/features/auth/pages/login_page.dart';
import 'package:job_spot/features/auth/pages/sign_up_page.dart';
import 'package:job_spot/features/home/pages/home_page.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.loginRoute:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      case AppRoutes.signUpRoute:
        return MaterialPageRoute(builder: (context) => const SignUpPage());
      case AppRoutes.homeRoute:
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(builder: (context) => const NotFoundPage());
    }
  }
}
