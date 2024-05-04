import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/feature/auth/login/ui/widget/forget_password_widget/build_rest_password_button.dart';
import 'package:mega_store/feature/auth/login/ui/widget/forget_password_widget/build_rest_password_field.dart';
import 'package:mega_store/feature/auth/register/ui/widget/build_text_register.dart';

class RestPasswordScreen extends StatelessWidget {
  const RestPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p30.w, vertical: AppPadding.p30.h),
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    const BuildTextRegister(),
                    verticalSpace(AppSize.s70),
                    const BuilRestPasswordField(),
                    verticalSpace(AppSize.s30),
                    const ForgetRestPasswordButton()
                  ],
                ),
              ))),
    );
  }
}
