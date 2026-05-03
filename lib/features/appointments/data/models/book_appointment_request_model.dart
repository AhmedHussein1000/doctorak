import 'package:doctorak/features/appointments/domain/entities/book_appointment_request_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_appointment_request_model.freezed.dart';
part 'book_appointment_request_model.g.dart';

@freezed
@JsonSerializable(createFactory: false)
class BookAppointmentRequestModel with _$BookAppointmentRequestModel {
  const factory BookAppointmentRequestModel({
    @JsonKey(name: 'doctor_id') required int doctorId,
    @JsonKey(name: 'start_time') required String startTime,
    String? notes,
  }) = _BookAppointmentRequestModel;

  const BookAppointmentRequestModel._();

  factory BookAppointmentRequestModel.fromEntity(
    BookAppointmentRequestEntity entity,
  ) {
    return BookAppointmentRequestModel(
      doctorId: entity.doctorId,
      startTime: entity.startTime,
      notes: entity.notes,
    );
  }

  Map<String, dynamic> toJson() => _$BookAppointmentRequestModelToJson(this);
}
