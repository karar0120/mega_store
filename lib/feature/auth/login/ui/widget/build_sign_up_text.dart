import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:mega_store/core/helper/extensions.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/routing/routes.dart';
import 'package:mega_store/core/theming/styles.dart';

class DontHaveAccountText extends StatelessWidget {
  const DontHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: AppString.dontHaveAccount,
            style: TextStyles.font12Graybold,
          ),
          TextSpan(
            text: AppString.register,
            style: TextStyles.font12RedBlod,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushNamed(Routes.registerScreen);
              },
          ),
        ],
      ),
    );
  }
}
