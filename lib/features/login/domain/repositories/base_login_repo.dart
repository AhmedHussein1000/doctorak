import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/login/domain/entities/login_request_body_entity.dart';
import 'package:doctorak/features/login/domain/entities/login_response_entity.dart';

abstract class BaseLoginRepo {
  Future<ApiResult<LoginResponseEntity>> login(
    LoginRequestBodyEntity loginRequestBodyEntity,
  );
}
