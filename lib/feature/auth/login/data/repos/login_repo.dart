import 'package:mega_store/core/networking/api_error_handler.dart';
import 'package:mega_store/core/networking/api_result.dart';
import 'package:mega_store/core/networking/api_service.dart';
import 'package:mega_store/feature/auth/login/data/models/login_request_body.dart';
import 'package:mega_store/feature/auth/login/data/models/login_response.dart';

class LoginRepo {
  final ApiService _apiService;
  LoginRepo(this._apiService);

  Future<ApiResult<LoginResponse>> login(
      LoginRequestBody loginRequestBody) async {
    try {
      final response = await _apiService.login(loginRequestBody);
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
