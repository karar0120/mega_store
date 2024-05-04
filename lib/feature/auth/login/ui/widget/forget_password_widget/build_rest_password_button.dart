import 'package:flutter/material.dart';
import 'package:mega_store/core/helper/extensions.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/theming/styles.dart';
import 'package:mega_store/core/widget/app_text_button.dart';

class ForgetRestPasswordButton extends StatelessWidget {
  const ForgetRestPasswordButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      borderRadius: 0.0,
      textStyle: TextStyles.font14WhiteBold,
      onPressed: () {
        context.pop();
        context.pop();
        context.pop();
      },
      buttonText: AppString.confirm,
    );
  }
}
