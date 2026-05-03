import 'package:doctorak/core/errors/api_error_handler.dart';
import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:doctorak/features/profile/data/models/user_profile_response_model.dart';
import 'package:doctorak/features/profile/domain/entities/user_profile_entity.dart';
import 'package:doctorak/features/profile/domain/repositories/base_profile_repo.dart';

class ProfileRepoImpl implements BaseProfileRepo {
  final BaseProfileRemoteDataSource baseUserProfileRemoteDataSource;

  ProfileRepoImpl(this.baseUserProfileRemoteDataSource);
  @override
  Future<ApiResult<UserProfileEntity?>> getUserProfile() async {
    try {
      final userProfileResponseModel = await baseUserProfileRemoteDataSource
          .getUserProfile();
      final userProfileEntity = userProfileResponseModel
          .toEntity()
          .users
          ?.first;
      if (userProfileEntity == null) {
        return Failure(
          ApiErrorModel(message: 'No user profile found', code: 404),
        );
      }
      return Success(userProfileEntity);
    } catch (e) {
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }

  @override
  Future<ApiResult<void>> logout() async {
    try {
      await baseUserProfileRemoteDataSource.logout();
      return Success(null);
    } catch (e) {
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }
}
