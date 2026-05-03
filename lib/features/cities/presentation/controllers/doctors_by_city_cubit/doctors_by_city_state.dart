import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doctors_by_city_state.freezed.dart';

@freezed
class DoctorsByCityState with _$DoctorsByCityState {
  const factory DoctorsByCityState.initial() = _Initial;
  const factory DoctorsByCityState.loading() = Loading;
  const factory DoctorsByCityState.success(List<DoctorEntity?>? doctors) =
      Success;
  const factory DoctorsByCityState.failure(ApiErrorModel apiErrorModel) =
      Failure;
}
