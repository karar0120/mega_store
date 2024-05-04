import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/core/widget/divider.dart';
import 'package:mega_store/feature/auth/login/ui/widget/build_form_field.dart';
import 'package:mega_store/feature/auth/login/ui/widget/build_login_button.dart';
import 'package:mega_store/feature/auth/login/ui/widget/build_text_login.dart';
import 'package:mega_store/feature/auth/login/ui/widget/login_bloc_listener.dart';
import 'package:mega_store/feature/auth/login/ui/widget/terms_and_conditions.dart';

import 'widget/build_sign_up_text.dart';
import 'widget/build_sign_with_google_apple.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: AppPadding.p30.w, vertical: AppPadding.p30.h),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              const BuildTextLogin(),
              verticalSpace(36),
              const BuildFormFieldEmailAndPassword(),
              verticalSpace(24),
              const LoginButton(),
              verticalSpace(16),
              const DividerOr(),
              verticalSpace(16),
              const BuildSignWithGoogleAndApple(),
              verticalSpace(16),
              const ForgotPasswordText(),
              verticalSpace(10),
              const DontHaveAccountText(),
              const LoginBlocListener(),
            ],
          ),
        ),
      )),
    );
  }
}
