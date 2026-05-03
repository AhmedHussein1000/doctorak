// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupResponseModelImpl _$$SignupResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$SignupResponseModelImpl(
  message: json['message'] as String?,
  userData: json['data'] == null
      ? null
      : UserDataModel.fromJson(json['data'] as Map<String, dynamic>),
  status: json['status'] as bool?,
  code: (json['code'] as num?)?.toInt(),
);

Map<String, dynamic> _$$SignupResponseModelImplToJson(
  _$SignupResponseModelImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.userData,
  'status': instance.status,
  'code': instance.code,
};
