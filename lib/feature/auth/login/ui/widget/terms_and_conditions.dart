import 'package:flutter/material.dart';
import 'package:mega_store/core/helper/extensions.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/routing/routes.dart';
import 'package:mega_store/core/theming/styles.dart';

class ForgotPasswordText extends StatelessWidget {
  const ForgotPasswordText({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.pushNamed(Routes.forgetPasswordScreen);
      },
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: AppString.forgotPassword,
              style: TextStyles.font12RedBlod,
            ),
          ],
        ),
      ),
    );
  }
}
