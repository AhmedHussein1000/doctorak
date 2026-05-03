import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/appointments/domain/entities/patient_entity.dart';

class AppointmentEntity {
  final int? id;
  final DoctorEntity? doctor;
  final PatientEntity? patient;
  final String? appointmentTime;
  final String? appointmentEndTime;
  final String? status;
  final String? notes;
  final int? appointmentPrice;

  const AppointmentEntity({
    this.id,
    this.doctor,
    this.patient,
    this.appointmentTime,
    this.appointmentEndTime,
    this.status,
    this.notes,
    this.appointmentPrice,
  });
}
