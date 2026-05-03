import 'package:doctorak/features/appointments/data/models/appointment_model.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_appointment_response_model.freezed.dart';
part 'book_appointment_response_model.g.dart';

@freezed
class BookAppointmentResponseModel with _$BookAppointmentResponseModel {
  const factory BookAppointmentResponseModel({
    String? message,
    @JsonKey(name: 'data') AppointmentModel? appointmentData,
    bool? status,
    int? code,
  }) = _BookAppointmentResponseModel;

  factory BookAppointmentResponseModel.fromJson(Map<String, dynamic> json) =>
      _$BookAppointmentResponseModelFromJson(json);
}

extension BookAppointmentResponseModelExtension on BookAppointmentResponseModel {
  AppointmentEntity? toEntity() => appointmentData?.toEntity();
}
