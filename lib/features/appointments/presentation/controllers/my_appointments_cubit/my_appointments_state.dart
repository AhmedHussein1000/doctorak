import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_appointments_state.freezed.dart';

@freezed
class MyAppointmentsState with _$MyAppointmentsState {
  const factory MyAppointmentsState.initial() = _Initial;
  const factory MyAppointmentsState.loading() = Loading;
  const factory MyAppointmentsState.success(
    List<AppointmentEntity> appointments,
  ) = Success;
  const factory MyAppointmentsState.failure(ApiErrorModel apiErrorModel) =
      Failure;
}
