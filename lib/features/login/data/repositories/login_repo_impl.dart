import 'dart:developer';

import 'package:doctorak/core/errors/api_error_handler.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:doctorak/features/login/data/models/login_request_body_model.dart';
import 'package:doctorak/features/login/data/models/login_response_model.dart';
import 'package:doctorak/features/login/domain/entities/login_request_body_entity.dart';
import 'package:doctorak/features/login/domain/entities/login_response_entity.dart';
import 'package:doctorak/features/login/domain/repositories/base_login_repo.dart';

class LoginRepoImpl extends BaseLoginRepo {
  final BaseLoginRemoteDataSource baseLoginRemoteDataSource;
  LoginRepoImpl(this.baseLoginRemoteDataSource);

  @override
  Future<ApiResult<LoginResponseEntity>> login(
    LoginRequestBodyEntity loginRequestBodyEntity,
  ) async {
    try {
      final loginResponse = await baseLoginRemoteDataSource.login(
        LoginRequestBodyModel.fromEntity(loginRequestBodyEntity),
      );
      return Success(loginResponse.toEntity());
    } catch (e) {
      log('LoginRepoImpl.login ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }
}
