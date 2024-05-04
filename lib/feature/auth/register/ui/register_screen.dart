import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store/core/helper/spacing.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/theming/styles.dart';
import 'package:mega_store/core/widget/app_text_button.dart';
import 'package:mega_store/feature/auth/register/logic/cubit/register_cubit.dart';
import 'package:mega_store/feature/auth/register/ui/widget/build_sign_in_text.dart';
import 'package:mega_store/feature/auth/register/ui/widget/build_text_register.dart';
import 'package:mega_store/feature/auth/register/ui/widget/register_bloc_listener.dart';
import 'package:mega_store/feature/auth/register/ui/widget/register_form_field.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const BuildTextRegister(),
                verticalSpace(36),
                Column(
                  children: [
                    const RegisterForm(),
                    verticalSpace(40),
                    AppTextButton(
                      borderRadius: 0.0,
                      buttonText: AppString.signUp,
                      textStyle: TextStyles.font14WhiteBold,
                      onPressed: () {
                        validateThenDoSignup(context);
                      },
                    ),
                    verticalSpace(30),
                    const AlreadyHaveAccountText(),
                    const RegisterBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoSignup(BuildContext context) {
    if (context.read<RegisterCubit>().formKey.currentState!.validate()) {
      context.read<RegisterCubit>().emitSignupStates();
    }
  }
}
