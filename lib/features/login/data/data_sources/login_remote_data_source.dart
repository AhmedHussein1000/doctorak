import 'package:doctorak/core/network/api_constants.dart';
import 'package:doctorak/core/network/dio_service.dart';
import 'package:doctorak/features/login/data/models/login_request_body_model.dart';
import 'package:doctorak/features/login/data/models/login_response_model.dart';

abstract class BaseLoginRemoteDataSource {
  Future<LoginResponseModel> login(LoginRequestBodyModel loginRequestBody);
}

class LoginRemoteDataSource extends BaseLoginRemoteDataSource {
  final DioService apiService;

  LoginRemoteDataSource(this.apiService);

  @override
  Future<LoginResponseModel> login(
    LoginRequestBodyModel loginRequestBody,
  ) async {
    final response = await apiService.post(
      ApiConstants.login,
      data: loginRequestBody.toJson(),
    );

    return LoginResponseModel.fromJson(response.data);
  }
}
