import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:doctorak/features/cities/domain/repositories/base_cities_repository.dart';
import 'package:doctorak/features/cities/presentation/controllers/cities_cubit/cities_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CitiesCubit extends Cubit<CitiesState> {
  final BaseCitiesRepository _baseCitiesRepository;

  CitiesCubit(this._baseCitiesRepository) : super(const CitiesState.initial());

  Future<void> getAllCities() async {
    emit(const CitiesState.loading());
    final result = await _baseCitiesRepository.getAllCities();
    result.when(
      failure: (apiErrorModel) => emit(CitiesState.failure(apiErrorModel)),
      success: (citiesResponse) {
        final groupedCities = _groupCitiesByGovernrate(
          citiesResponse.citiesList,
        );
        emit(CitiesState.success(groupedCities));
      },
    );
  }

  Map<String, List<CityEntity>> _groupCitiesByGovernrate(
    List<CityEntity?>? cities,
  ) {
    final Map<String, List<CityEntity>> grouped = {};
    if (cities == null) return grouped;

    for (final city in cities) {
      if (city == null) continue;
      final governrateName = city.governrate?.name ?? 'Unknown';
      grouped.putIfAbsent(governrateName, () => []).add(city);
    }

    return Map.fromEntries(
      grouped.entries.toList()..sort((a, b) => a.key.compareTo(b.key)),
    );
  }
}
