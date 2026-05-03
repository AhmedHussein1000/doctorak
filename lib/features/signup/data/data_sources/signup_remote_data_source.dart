import 'package:doctorak/core/network/api_constants.dart';
import 'package:doctorak/core/network/dio_service.dart';
import 'package:doctorak/features/signup/data/models/signup_request_body_model.dart';
import 'package:doctorak/features/signup/data/models/signup_response_model.dart';

abstract class BaseSignupRemoteDataSource {
  Future<SignupResponseModel> signup(SignupRequestBodyModel signupRequestBody);
}

class SignupRemoteDataSource extends BaseSignupRemoteDataSource {
  final DioService apiService;

  SignupRemoteDataSource(this.apiService);

  @override
  Future<SignupResponseModel> signup(
    SignupRequestBodyModel signupRequestBody,
  ) async {
    final response = await apiService.post(
      ApiConstants.signup,
      data: signupRequestBody.toJson(),
    );
    return SignupResponseModel.fromJson(response.data);
  }
}
