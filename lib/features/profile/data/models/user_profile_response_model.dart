import 'package:doctorak/features/profile/data/models/user_profile_model.dart';
import 'package:doctorak/features/profile/domain/entities/user_profile_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_response_model.freezed.dart';
part 'user_profile_response_model.g.dart';

@freezed
class UserProfileResponseModel with _$UserProfileResponseModel {
  const factory UserProfileResponseModel({
    @JsonKey(name: 'data') List<UserProfileModel?>? users,
  }) = _UserProfileResponseModel;

  factory UserProfileResponseModel.fromJson(Map<String, dynamic> json) =>
      _$UserProfileResponseModelFromJson(json);
}

extension UserProfileResponseModelExtension on UserProfileResponseModel {
  UserProfileResponseEntity toEntity() {
    return UserProfileResponseEntity(
      users: users?.map((e) => e?.toEntity()).toList(),
    );
  }
}
