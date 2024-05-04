import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/helper/image_manger.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/theming/styles.dart';

class BuildTextRegister extends StatelessWidget {
  const BuildTextRegister({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(
          ImageManger.logo,
          fit: BoxFit.cover,
        ),
        SizedBox(
          height: 40.h,
        ),
        Text(
          AppString.letsGetStarted,
          style: TextStyles.font16DarkBlueBold,
        ),
        verticalSpace(8),
        Text(
          AppString.createAnNewAccount,
          style: TextStyles.font12GrayRegular,
        )
      ],
    );
  }
}
