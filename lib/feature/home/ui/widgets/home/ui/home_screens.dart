import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/helper/image_manger.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/values_manger.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: AppPadding.p20.w, vertical: AppPadding.p20.h),
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  Image.asset(ImageManger.slider),
                  verticalSpace(AppSize.s12),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: AppSize.s12.h,
                        child: Image.asset(ImageManger.bag),
                      ),
                      horizontalSpace(AppSize.s12),
                      const Text("Category Name "),
                    ],
                  ),
                  Image.asset(ImageManger.sale),
                  const Text("Flash Sale"),
                  Container(
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Image.asset(ImageManger.bag),
                            const Icon(Icons.favorite)
                          ],
                        ),
                        const Text("FS - Nike Air Max 270 React"),
                        const Text("299,43"),
                        const Text("534,33"),
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
