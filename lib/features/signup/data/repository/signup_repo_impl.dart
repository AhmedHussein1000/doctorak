import 'dart:developer';
import 'package:doctorak/core/errors/api_error_handler.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/signup/data/data_sources/signup_remote_data_source.dart';
import 'package:doctorak/features/signup/data/models/signup_request_body_model.dart';
import 'package:doctorak/features/signup/data/models/signup_response_model.dart';
import 'package:doctorak/features/signup/domain/entities/signup_request_body_entity.dart';
import 'package:doctorak/features/signup/domain/entities/signup_response_entity.dart';
import 'package:doctorak/features/signup/domain/repositories/base_signup_repo.dart';

class SignupReposImpl extends BaseSignupRepo {
  final BaseSignupRemoteDataSource baseSignupRemoteDataSource;

  SignupReposImpl(this.baseSignupRemoteDataSource);
  @override
  Future<ApiResult<SignupResponseEntity>> signup(
    SignupRequestBodyEntity signupRequestBody,
  ) async {
    try {
      final signupResponse = await baseSignupRemoteDataSource.signup(
        SignupRequestBodyModel.fromEntity(signupRequestBody),
      );
      return Success(signupResponse.toEntity());
    } catch (e) {
      log('SignupReposImpl.signup ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }
}
