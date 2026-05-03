import 'dart:developer';
import 'package:doctorak/core/errors/api_error_handler.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/shared/entities/doctors_response_entity.dart';
import 'package:doctorak/features/cities/data/data_sources/cities_remote_data_source.dart';
import 'package:doctorak/features/cities/data/models/cities_response_model.dart';
import 'package:doctorak/features/cities/domain/entities/cities_response_entity.dart';
import 'package:doctorak/features/cities/domain/repositories/base_cities_repository.dart';
import 'package:doctorak/core/shared/models/doctors_response_model.dart';

class CitiesRepositoryImpl extends BaseCitiesRepository {
  final BaseCitiesRemoteDataSource baseCitiesRemoteDataSource;

  CitiesRepositoryImpl(this.baseCitiesRemoteDataSource);

  @override
  Future<ApiResult<CitiesResponseEntity>> getAllCities() async {
    try {
      final citiesResponseModel = await baseCitiesRemoteDataSource
          .getAllCities();
      return Success(citiesResponseModel.toEntity());
    } catch (e) {
      log('CitiesRepositoryImpl.getAllCities ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }

  @override
  Future<ApiResult<DoctorsResponseEntity>> getDoctorsByCity(int cityId) async {
    try {
      final doctorsResponseModel = await baseCitiesRemoteDataSource
          .getDoctorsByCity(cityId);
      return Success(doctorsResponseModel.toEntity());
    } catch (e) {
      log('CitiesRepositoryImpl.getDoctorsByCity ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }
}
