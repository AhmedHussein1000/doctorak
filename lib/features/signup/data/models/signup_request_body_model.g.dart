// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signup_request_body_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignupRequestBodyModelImpl _$$SignupRequestBodyModelImplFromJson(
  Map<String, dynamic> json,
) => _$SignupRequestBodyModelImpl(
  userName: json['name'] as String,
  phone: json['phone'] as String,
  email: json['email'] as String,
  password: json['password'] as String,
  passwordConfirmation: json['password_confirmation'] as String,
  gender: (json['gender'] as num).toInt(),
);

Map<String, dynamic> _$$SignupRequestBodyModelImplToJson(
  _$SignupRequestBodyModelImpl instance,
) => <String, dynamic>{
  'name': instance.userName,
  'phone': instance.phone,
  'email': instance.email,
  'password': instance.password,
  'password_confirmation': instance.passwordConfirmation,
  'gender': instance.gender,
};
