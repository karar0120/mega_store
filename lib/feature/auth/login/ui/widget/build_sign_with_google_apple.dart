import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega_store/core/helper/image_manger.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/core/theming/color.dart';
import 'package:mega_store/core/theming/styles.dart';

class BuildSignWithGoogleAndApple extends StatelessWidget {
  const BuildSignWithGoogleAndApple({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: AppSize.s60.h,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.gray),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p12),
            child: Row(
              children: [
                SvgPicture.asset(ImageManger.google),
                horizontalSpace(AppSize.s20.w),
                Text(
                  AppString.loginWithGoogle,
                  style: TextStyles.font14GrayBlod,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
        verticalSpace(AppSize.s20.h),
        Container(
          height: AppSize.s60.h,
          decoration: BoxDecoration(
            border: Border.all(color: ColorsManager.gray),
          ),
          child: Padding(
            padding: const EdgeInsets.all(AppPadding.p12),
            child: Row(
              children: [
                SvgPicture.asset(ImageManger.faceBook),
                horizontalSpace(AppSize.s20.w),
                Center(
                    child: Text(
                  AppString.loginWithFacebook,
                  style: TextStyles.font14GrayBlod,
                ))
              ],
            ),
          ),
        ),
      ],
    );
  }
}
