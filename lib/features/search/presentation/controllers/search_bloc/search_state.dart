import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = Initial;
  const factory SearchState.loading() = SearchLoading;
  const factory SearchState.success(List<DoctorEntity> doctors) = SearchSuccess;
  const factory SearchState.error(ApiErrorModel apiErrorModel) = SearchError;
}
