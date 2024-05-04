import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega_store/core/helper/app_regex.dart';
import 'package:mega_store/core/helper/image_manger.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/core/widget/app_text_form_field.dart';
import 'package:mega_store/feature/auth/login/logic/cubit/login_cubit.dart';

class BuildFormFieldEmailAndPassword extends StatefulWidget {
  const BuildFormFieldEmailAndPassword({super.key});

  @override
  State<BuildFormFieldEmailAndPassword> createState() =>
      _BuildFormFieldEmailAndPasswordState();
}

class _BuildFormFieldEmailAndPasswordState
    extends State<BuildFormFieldEmailAndPassword> {
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p12, vertical: AppPadding.p16),
              child: SvgPicture.asset(
                ImageManger.email,
              ),
            ),
            hintText: AppString.yourEmail,
            controller: context.read<LoginCubit>().emailTextEditingController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isEmailValid(value)) {
                return AppString.pleaseEnterYourEmail;
              }
            },
          ),
          verticalSpace(AppSize.s18),
          AppTextFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p12, vertical: AppPadding.p16),
              child: SvgPicture.asset(
                ImageManger.lock,
              ),
            ),
            hintText: AppString.password,
            controller:
                context.read<LoginCubit>().passwordTextEditingController,
            isObscureText: isObscureText,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return AppString.oopsYourPasswordIsNotCorrect;
              }
            },
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isObscureText = !isObscureText;
                });
              },
              child: isObscureText
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
          ),
        ],
      ),
    );
  }
}
