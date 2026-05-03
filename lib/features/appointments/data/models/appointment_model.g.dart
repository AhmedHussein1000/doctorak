// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'appointment_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AppointmentModelImpl _$$AppointmentModelImplFromJson(
  Map<String, dynamic> json,
) => _$AppointmentModelImpl(
  id: (json['id'] as num?)?.toInt(),
  doctor: json['doctor'] == null
      ? null
      : DoctorModel.fromJson(json['doctor'] as Map<String, dynamic>),
  patient: json['patient'] == null
      ? null
      : PatientModel.fromJson(json['patient'] as Map<String, dynamic>),
  appointmentTime: json['appointment_time'] as String?,
  appointmentEndTime: json['appointment_end_time'] as String?,
  status: json['status'] as String?,
  notes: json['notes'] as String?,
  appointmentPrice: (json['appointment_price'] as num?)?.toInt(),
);

Map<String, dynamic> _$$AppointmentModelImplToJson(
  _$AppointmentModelImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'doctor': instance.doctor,
  'patient': instance.patient,
  'appointment_time': instance.appointmentTime,
  'appointment_end_time': instance.appointmentEndTime,
  'status': instance.status,
  'notes': instance.notes,
  'appointment_price': instance.appointmentPrice,
};
