// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_error_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiErrorModel _$ApiErrorModelFromJson(Map<String, dynamic> json) =>
    ApiErrorModel(
      message: json['message'] as String?,
      code: (json['code'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ApiErrorModelToJson(ApiErrorModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
  email: (json['email'] as List<dynamic>?)?.map((e) => e as String).toList(),
  phone: (json['phone'] as List<dynamic>?)?.map((e) => e as String).toList(),
  name: (json['name'] as List<dynamic>?)?.map((e) => e as String).toList(),
  gender: (json['gender'] as List<dynamic>?)?.map((e) => e as String).toList(),
  password: (json['password'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
);

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
  'name': instance.name,
  'email': instance.email,
  'gender': instance.gender,
  'phone': instance.phone,
  'password': instance.password,
};
