// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileResponseModelImpl _$$UserProfileResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$UserProfileResponseModelImpl(
  users: (json['data'] as List<dynamic>?)
      ?.map(
        (e) => e == null
            ? null
            : UserProfileModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$UserProfileResponseModelImplToJson(
  _$UserProfileResponseModelImpl instance,
) => <String, dynamic>{'data': instance.users};
