import 'package:doctorak/features/appointments/data/models/appointment_model.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_appointments_response_model.freezed.dart';
part 'my_appointments_response_model.g.dart';

@freezed
class MyAppointmentsResponseModel with _$MyAppointmentsResponseModel {
  const factory MyAppointmentsResponseModel({
    String? message,
    @JsonKey(name: 'data') List<AppointmentModel>? appointmentsData,
    bool? status,
    int? code,
  }) = _MyAppointmentsResponseModel;

  factory MyAppointmentsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$MyAppointmentsResponseModelFromJson(json);
}

extension MyAppointmentsResponseModelExtension on MyAppointmentsResponseModel {
  List<AppointmentEntity> toEntity() {
    if (appointmentsData == null) return [];
    return appointmentsData!.map((model) => model.toEntity()).toList();
  }
}
