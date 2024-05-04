import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mega_store/core/helper/extensions.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/routing/routes.dart';
import 'package:mega_store/core/theming/styles.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppString.haveAAccount,
            style: TextStyles.font13DarkBlueRegular,
          ),
          TextSpan(
            text: AppString.signIn,
            style: TextStyles.font13BlueSemiBold,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginScreen);
              },
          ),
        ],
      ),
    );
  }
}
