import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store/core/helper/image_manger.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/core/theming/color.dart';
import 'package:mega_store/core/widget/app_text_form_field.dart';

class BuildForgetPasswordField extends StatelessWidget {
  const BuildForgetPasswordField({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextFormField(
        prefixIcon: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: AppPadding.p12, vertical: AppPadding.p16),
          child: SvgPicture.asset(
            ImageManger.email,
            color: ColorsManager.lighterBlue,
          ),
        ),
        hintText: AppString.yourEmail,
        validator: (value) {});
  }
}
