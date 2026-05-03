import 'package:doctorak/core/network/api_constants.dart';
import 'package:doctorak/core/network/dio_service.dart';
import 'package:doctorak/core/shared/models/doctors_response_model.dart';
import 'package:doctorak/features/home/data/models/specializations_response_model.dart';

abstract class BaseHomeRemoteDataSource {
  Future<SpecializationsResponseModel> getHomeSpecializations();
  Future<SpecializationsResponseModel> getAllSpecializations();
  Future<DoctorsResponseModel> getAllDoctors();
}

class HomeRemoteDataSourceImpl extends BaseHomeRemoteDataSource {
  final DioService apiService;

  HomeRemoteDataSourceImpl(this.apiService);
  @override
  Future<SpecializationsResponseModel> getHomeSpecializations() async {
    final response = await apiService.get(ApiConstants.allSpecializations);

    return SpecializationsResponseModel.fromJson(response.data);
  }

  @override
  Future<SpecializationsResponseModel> getAllSpecializations() async {
    final response = await apiService.get(ApiConstants.allSpecializations);

    return SpecializationsResponseModel.fromJson(response.data);
  }

  @override
  Future<DoctorsResponseModel> getAllDoctors() async {
    final response = await apiService.get(ApiConstants.allDoctors);
    return DoctorsResponseModel.fromJson(response.data);
  }
}
