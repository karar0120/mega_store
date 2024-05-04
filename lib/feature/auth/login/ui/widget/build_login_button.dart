import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mega_store/core/helper/strings_manger.dart';
import 'package:mega_store/core/theming/styles.dart';
import 'package:mega_store/core/widget/app_text_button.dart';
import 'package:mega_store/feature/auth/login/logic/cubit/login_cubit.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton(
      borderRadius: 0.0,
      textStyle: TextStyles.font14WhiteBold,
      onPressed: () {
        validateThenDoLogin(context);
      },
      buttonText: AppString.signIn,
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginState();
    }
  }
}
