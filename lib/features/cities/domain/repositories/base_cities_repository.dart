import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/shared/entities/doctors_response_entity.dart';
import 'package:doctorak/features/cities/domain/entities/cities_response_entity.dart';

abstract class BaseCitiesRepository {
  Future<ApiResult<CitiesResponseEntity>> getAllCities();
  Future<ApiResult<DoctorsResponseEntity>> getDoctorsByCity(int cityId);
}
