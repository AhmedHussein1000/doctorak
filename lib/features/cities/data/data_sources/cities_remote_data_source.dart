import 'package:doctorak/core/network/api_constants.dart';
import 'package:doctorak/core/network/dio_service.dart';
import 'package:doctorak/core/shared/models/doctors_response_model.dart';
import 'package:doctorak/features/cities/data/models/cities_response_model.dart';

abstract class BaseCitiesRemoteDataSource {
  Future<CitiesResponseModel> getAllCities();
  Future<DoctorsResponseModel> getDoctorsByCity(int cityId);
}

class CitiesRemoteDataSourceImpl extends BaseCitiesRemoteDataSource {
  final DioService apiService;

  CitiesRemoteDataSourceImpl(this.apiService);

  @override
  Future<CitiesResponseModel> getAllCities() async {
    final response = await apiService.get(ApiConstants.allCities);
    return CitiesResponseModel.fromJson(response.data);
  }

  @override
  Future<DoctorsResponseModel> getDoctorsByCity(int cityId) async {
    final response = await apiService.get(ApiConstants.doctorsByCity(cityId));
    return DoctorsResponseModel.fromJson(response.data);
  }
}
