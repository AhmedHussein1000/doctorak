import 'package:doctorak/core/caches/cache_keys.dart';
import 'package:doctorak/core/caches/shared_prefs_manager.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/features/profile/domain/entities/user_profile_entity.dart';
import 'package:doctorak/features/profile/domain/repositories/base_profile_repo.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'profile_state.dart';

class ProfileCubit extends Cubit<ProfileState> {
  final BaseProfileRepo baseUserProfileRepo;
  ProfileCubit(this.baseUserProfileRepo) : super(const ProfileState.initial());

  Future<void> getUserProfile() async {
    emit(GetProfileLoading());
    final result = await baseUserProfileRepo.getUserProfile();
    result.when(
      success: (userProfileEntity) {
        _cacheUserProfile(userProfileEntity!);
        emit(GetProfileSuccess(userProfileEntity));
      },
      failure: (apiError) => emit(
        GetProfileFailure(apiError.message ?? AppConstants.unknownError),
      ),
    );
  }

  Future<void> _cacheUserProfile(UserProfileEntity profile) async {
    await SharedPrefsManager.saveData(
      key: CacheKeys.userName,
      value: profile.name ?? '',
    );
    await SharedPrefsManager.saveData(
      key: CacheKeys.userEmail,
      value: profile.email ?? '',
    );
    await SharedPrefsManager.saveData(
      key: CacheKeys.userPhone,
      value: profile.phone ?? '',
    );
  }

  Future<void> logout() async {
    emit(LogoutLoading());
    final result = await baseUserProfileRepo.logout();
    result.when(
      success: (_) {
        userToken = null;
        emit(LogoutSuccess());
      },
      failure: (apiError) =>
          emit(LogoutFailure(apiError.message ?? AppConstants.unknownError)),
    );
  }
}
