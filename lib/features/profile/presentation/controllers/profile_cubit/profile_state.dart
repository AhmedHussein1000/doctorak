import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:doctorak/features/profile/domain/entities/user_profile_entity.dart';

part 'profile_state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.initial() = _Initial;
  const factory ProfileState.getProfileLoading() = GetProfileLoading;
  const factory ProfileState.getProfileSuccess(
    UserProfileEntity userProfileEntity,
  ) = GetProfileSuccess;
  const factory ProfileState.getProfileFailure(String error) =
      GetProfileFailure;
  const factory ProfileState.logoutLoading() = LogoutLoading;
  const factory ProfileState.logoutSuccess() = LogoutSuccess;
  const factory ProfileState.logoutFailure(String error) = LogoutFailure;
}
