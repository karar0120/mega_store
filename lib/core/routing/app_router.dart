import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store/core/di/dependency_injection.dart';
import 'package:mega_store/core/routing/routes.dart';
import 'package:mega_store/feature/auth/login/logic/cubit/login_cubit.dart';
import 'package:mega_store/feature/auth/login/ui/forget_password_screen.dart';
import 'package:mega_store/feature/auth/login/ui/login_screen.dart';
import 'package:mega_store/feature/auth/login/ui/widget/forget_password_widget/reset_password.dart';
import 'package:mega_store/feature/auth/login/ui/widget/forget_password_widget/verify_your_account.dart';
import 'package:mega_store/feature/auth/register/logic/cubit/register_cubit.dart';
import 'package:mega_store/feature/auth/register/ui/register_screen.dart';
import 'package:mega_store/feature/home/controller/nav_cubit.dart';
import 'package:mega_store/feature/home/ui/navigations.dart';

class AppRoute {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.loginScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider<LoginCubit>(
                  create: (context) => getIt<LoginCubit>(),
                  child: const LoginScreen(),
                ));
      case Routes.registerScreen:
        return MaterialPageRoute(
            builder: (context) => BlocProvider<RegisterCubit>(
                  create: (context) => getIt<RegisterCubit>(),
                  child: const RegisterScreen(),
                ));
      case Routes.forgetPasswordScreen:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswordScreen());

      case Routes.verifyYourAccount:
        return MaterialPageRoute(
            builder: (context) => const VerifyYourAccount());
      case Routes.resetPasswordScreen:
        return MaterialPageRoute(
            builder: (context) => const RestPasswordScreen());
      case Routes.homeScreens:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => NavCubit(),
                  child: const NavigationsScreen(),
                ));

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text("No Route Found"),
              ),
              body: const Center(child: Text("No Route Found")),
            ));
  }
}
