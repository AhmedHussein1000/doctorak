import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_doctors_state.freezed.dart';

@freezed
class AllDoctorsState with _$AllDoctorsState {
  const factory AllDoctorsState.initial() = AllDoctorsInitial;
  const factory AllDoctorsState.loading() = AllDoctorsLoading;
  const factory AllDoctorsState.success(List<DoctorEntity?>? allDoctors) = AllDoctorsSuccess;
  const factory AllDoctorsState.failure(ApiErrorModel apiErrorModel) = AllDoctorsFailure;
}
