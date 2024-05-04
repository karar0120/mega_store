import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega_store/core/helper/app_regex.dart';
import 'package:mega_store/core/helper/image_manger.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/helper/values_manger.dart';
import 'package:mega_store/core/theming/color.dart';
import 'package:mega_store/core/widget/app_text_form_field.dart';
import 'package:mega_store/feature/auth/register/logic/cubit/register_cubit.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key});

  @override
  State<RegisterForm> createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  bool isPasswordObscureText = true;
  bool isPasswordConfirmationObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<RegisterCubit>().formKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: AppString.fullName,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p12, vertical: AppPadding.p16),
              child: SvgPicture.asset(
                ImageManger.user,
                color: ColorsManager.lighterBlue,
              ),
            ),
            validator: (value) {},
            controller: context.read<RegisterCubit>().nameController,
          ),
          verticalSpace(18),
          AppTextFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p12, vertical: AppPadding.p16),
              child: SvgPicture.asset(
                ImageManger.email,
                color: ColorsManager.lighterBlue,
              ),
            ),
            hintText: AppString.yourEmail,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  !AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            controller: context.read<RegisterCubit>().phoneController,
          ),
          verticalSpace(18),
          AppTextFormField(
            hintText: AppString.phone,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p12, vertical: AppPadding.p16),
              child: SvgPicture.asset(
                ImageManger.phone,
                color: ColorsManager.lighterBlue,
              ),
            ),
            validator: (value) {},
            controller: context.read<RegisterCubit>().emailController,
          ),
          verticalSpace(18),
          AppTextFormField(
            controller: context.read<RegisterCubit>().passwordController,
            hintText: AppString.password,
            isObscureText: isPasswordObscureText,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p12, vertical: AppPadding.p16),
              child: SvgPicture.asset(
                ImageManger.lock,
                color: ColorsManager.lighterBlue,
              ),
            ),
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordObscureText = !isPasswordObscureText;
                });
              },
              child: Icon(
                isPasswordObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
          verticalSpace(18),
          AppTextFormField(
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p12, vertical: AppPadding.p16),
              child: SvgPicture.asset(
                ImageManger.lock,
                color: ColorsManager.lighterBlue,
              ),
            ),
            controller:
                context.read<RegisterCubit>().passwordConfirmationController,
            hintText: AppString.confirmPassword,
            isObscureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPasswordConfirmationObscureText =
                      !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(
                isPasswordConfirmationObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Please enter a valid password';
              }
            },
          ),
        ],
      ),
    );
  }
}
