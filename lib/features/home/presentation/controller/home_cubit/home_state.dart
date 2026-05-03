import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = Initial;
  const factory HomeState.specializationsLoading() = SpecializationsLoading;
  const factory HomeState.specializationsSuccess({
    List<SpecializationDataEntity?>? specializationsDataList,
  }) = SpecializationsSuccess;
  const factory HomeState.specializationsFailure({
    required ApiErrorModel apiErrorModel,
  }) = SpecializationsFailure;
  const factory HomeState.doctorsSuccess({
    List<DoctorEntity?>? doctors,
  }) = DoctorsSuccess;
  const factory HomeState.doctorsFailure({
    required ApiErrorModel apiErrorModel,
  }) = DoctorsFailure;
}
