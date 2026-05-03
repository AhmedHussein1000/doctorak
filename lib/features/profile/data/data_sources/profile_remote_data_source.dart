import 'package:doctorak/core/network/api_constants.dart';
import 'package:doctorak/core/network/dio_service.dart';
import 'package:doctorak/features/profile/data/models/user_profile_response_model.dart';

abstract class BaseProfileRemoteDataSource {
  Future<UserProfileResponseModel> getUserProfile();
  Future<void> logout();
}

class ProfileRemoteDataSourceImpl implements BaseProfileRemoteDataSource {
  final DioService apiService;

  ProfileRemoteDataSourceImpl(this.apiService);
  @override
  Future<UserProfileResponseModel> getUserProfile() async {
    final response = await apiService.get(ApiConstants.userProfile);
    return UserProfileResponseModel.fromJson(response.data);
  }

  @override
  Future<void> logout() async {
    await apiService.post(ApiConstants.logout);
  }
}
