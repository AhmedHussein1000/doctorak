import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/signup/domain/entities/signup_request_body_entity.dart';
import 'package:doctorak/features/signup/domain/entities/signup_response_entity.dart';

abstract class BaseSignupRepo {
  Future<ApiResult<SignupResponseEntity>> signup(
    SignupRequestBodyEntity signupRequestBody,
  );
}
