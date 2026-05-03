import 'package:doctorak/core/shared/models/doctor_model.dart';
import 'package:doctorak/features/appointments/data/models/patient_model.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'appointment_model.freezed.dart';
part 'appointment_model.g.dart';

@freezed
class AppointmentModel with _$AppointmentModel {
  const factory AppointmentModel({
    int? id,
    DoctorModel? doctor,
    PatientModel? patient,
    @JsonKey(name: 'appointment_time') String? appointmentTime,
    @JsonKey(name: 'appointment_end_time') String? appointmentEndTime,
    String? status,
    String? notes,
    @JsonKey(name: 'appointment_price') int? appointmentPrice,
  }) = _AppointmentModel;

  factory AppointmentModel.fromJson(Map<String, dynamic> json) =>
      _$AppointmentModelFromJson(json);
}

extension AppointmentModelExtension on AppointmentModel {
  AppointmentEntity toEntity() {
    return AppointmentEntity(
      id: id,
      doctor: doctor?.toEntity(),
      patient: patient?.toEntity(),
      appointmentTime: appointmentTime,
      appointmentEndTime: appointmentEndTime,
      status: status,
      notes: notes,
      appointmentPrice: appointmentPrice,
    );
  }
}
