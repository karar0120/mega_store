import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mega_store/feature/auth/register/data/models/register_request_body.dart';
import 'package:mega_store/feature/auth/register/data/repo/register_repo.dart';

part 'register_state.dart';
part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final RegisterRepo _registerRepo;
  RegisterCubit(this._registerRepo) : super(const RegisterState.initial());

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();
  final formKey = GlobalKey<FormState>();
  void emitSignupStates() async {
    emit(const RegisterState.registerLoading());
    final response = await _registerRepo.register(
      RegisterRequestBody(
        name: nameController.text,
        email: emailController.text,
        phone: phoneController.text,
        password: passwordController.text,
        passwordConformation: passwordConfirmationController.text,
        gender: 0,
      ),
    );
    response.when(success: (signupResponse) {
      emit(RegisterState.registerSuccess(signupResponse));
    }, failure: (error) {
      emit(RegisterState.registerError(
          error: error.apiErrorModel.message ?? ''));
    });
  }
}
