part of 'register_cubit.dart';

@freezed
class RegisterState<T> with _$RegisterState<T> {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.registerLoading() = RegisterLoading;
  const factory RegisterState.registerSuccess(T data) = RegisterSuccess<T>;
  const factory RegisterState.registerError({required String error}) =
      RegisterError;
}
