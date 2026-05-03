// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'book_appointment_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookAppointmentResponseModelImpl _$$BookAppointmentResponseModelImplFromJson(
  Map<String, dynamic> json,
) => _$BookAppointmentResponseModelImpl(
  message: json['message'] as String?,
  appointmentData: json['data'] == null
      ? null
      : AppointmentModel.fromJson(json['data'] as Map<String, dynamic>),
  status: json['status'] as bool?,
  code: (json['code'] as num?)?.toInt(),
);

Map<String, dynamic> _$$BookAppointmentResponseModelImplToJson(
  _$BookAppointmentResponseModelImpl instance,
) => <String, dynamic>{
  'message': instance.message,
  'data': instance.appointmentData,
  'status': instance.status,
  'code': instance.code,
};
