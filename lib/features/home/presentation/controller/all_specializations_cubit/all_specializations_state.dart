import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_specializations_state.freezed.dart';

@freezed
class AllSpecializationsState with _$AllSpecializationsState {
  const factory AllSpecializationsState.initial() = AllSpecializationsInitial;
  const factory AllSpecializationsState.loading() = AllSpecializationsLoading;
  const factory AllSpecializationsState.success(
    List<SpecializationDataEntity?>? specializationsList,
  ) = AllSpecializationsSuccess;
  const factory AllSpecializationsState.failure(ApiErrorModel apiErrorModel) =
      AllSpecializationsFailure;
}
