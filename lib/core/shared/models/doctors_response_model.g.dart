// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'doctors_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DoctorsResponseModelImpl _$$DoctorsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$DoctorsResponseModelImpl(
  doctorsList: (json['data'] as List<dynamic>?)
      ?.map(
        (e) =>
            e == null ? null : DoctorModel.fromJson(e as Map<String, dynamic>),
      )
      .toList(),
);

Map<String, dynamic> _$$DoctorsResponseModelImplToJson(
  _$DoctorsResponseModelImpl instance,
) => <String, dynamic>{'data': instance.doctorsList};
