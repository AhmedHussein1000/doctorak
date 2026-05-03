// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_appointments_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MyAppointmentsResponseModelImpl _$$MyAppointmentsResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$MyAppointmentsResponseModelImpl(
  message: json['message'] as String?,
  appointmentsData: (json['data'] as List<dynamic>?)
      ?.map((e) => AppointmentModel.fromJson(e as Map<String, dynamic>))
      .toList(),
  status: json['status'] as bool?,
  code: (json['code'] as num?)?.toInt(),
);

Map<String, dynamic> _$$MyAppointmentsResponseModelImplToJson(
  _$MyAppointmentsResponseModelImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.appointmentsData,
  'status': instance.status,
  'code': instance.code,
};
