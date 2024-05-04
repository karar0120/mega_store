import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/helper/extensions.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/core/routing/routes.dart';
import 'package:mega_store/core/theming/styles.dart';
import 'package:mega_store/core/widget/app_text_button.dart';
import 'package:mega_store/feature/auth/register/ui/widget/build_text_register.dart';

class VerifyYourAccount extends StatelessWidget {
  const VerifyYourAccount({super.key});

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
                      AppTextButton(
                        borderRadius: 0.0,
                        textStyle: TextStyles.font14WhiteBold,
                        onPressed: () {
                          context.pushNamed(Routes.resetPasswordScreen);
                        },
                        buttonText: AppString.verfiy,
                      ),
                    ],
                  ),
                ))));
  }
}
