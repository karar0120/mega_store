import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/feature/auth/register/ui/widget/build_text_register.dart';

import 'widget/forget_password_widget/build_forget_password_button.dart';
import 'widget/forget_password_widget/build_forget_password_field.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
                    const BuildForgetPasswordField(),
                    verticalSpace(AppSize.s30),
                    const ForgetPasswordButton()
                  ],
                ),
              ))),
    );
  }
}
