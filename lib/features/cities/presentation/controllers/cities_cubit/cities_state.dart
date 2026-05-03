import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'cities_state.freezed.dart';

@freezed
class CitiesState with _$CitiesState {
  const factory CitiesState.initial() = _Initial;
  const factory CitiesState.loading() = Loading;
  const factory CitiesState.success(
    Map<String, List<CityEntity>> groupedCities,
  ) = Success;
  const factory CitiesState.failure(ApiErrorModel apiErrorModel) = Failure;
}
