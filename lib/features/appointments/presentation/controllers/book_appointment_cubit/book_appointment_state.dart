import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_appointment_state.freezed.dart';

@freezed
class BookAppointmentState with _$BookAppointmentState {
  const factory BookAppointmentState.initial() = _Initial;
  const factory BookAppointmentState.loading() = Loading;
  const factory BookAppointmentState.paymentProcessing() = PaymentProcessing;
  const factory BookAppointmentState.success(
    AppointmentEntity appointmentEntity,
  ) = Success;
  const factory BookAppointmentState.failure(ApiErrorModel apiErrorModel) =
      Failure;
}
