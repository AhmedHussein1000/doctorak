import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/profile/domain/entities/user_profile_entity.dart';

abstract class BaseProfileRepo {
  Future<ApiResult<UserProfileEntity?>> getUserProfile();
  Future<ApiResult<void>> logout();
}
