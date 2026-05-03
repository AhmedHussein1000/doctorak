import 'package:doctorak/features/cities/domain/repositories/base_cities_repository.dart';
import 'package:doctorak/features/cities/presentation/controllers/doctors_by_city_cubit/doctors_by_city_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsByCityCubit extends Cubit<DoctorsByCityState> {
  final BaseCitiesRepository _baseCitiesRepository;

  DoctorsByCityCubit(this._baseCitiesRepository)
    : super(const DoctorsByCityState.initial());

  Future<void> getDoctorsByCity(int cityId) async {
    emit(const DoctorsByCityState.loading());
    final result = await _baseCitiesRepository.getDoctorsByCity(cityId);
    result.when(
      failure: (apiErrorModel) =>
          emit(DoctorsByCityState.failure(apiErrorModel)),
      success: (doctorsResponse) =>
          emit(DoctorsByCityState.success(doctorsResponse.doctorsList)),
    );
  }
}
