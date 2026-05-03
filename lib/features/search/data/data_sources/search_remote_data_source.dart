import 'package:doctorak/core/network/api_constants.dart';
import 'package:doctorak/core/network/dio_service.dart';
import 'package:doctorak/core/shared/models/doctors_response_model.dart';

abstract class BaseSearchRemoteDataSource {
  Future<DoctorsResponseModel> searchDoctors(String query);
}

class SearchRemoteDataSourceImpl extends BaseSearchRemoteDataSource {
  final DioService apiService;

  SearchRemoteDataSourceImpl(this.apiService);

  @override
  Future<DoctorsResponseModel> searchDoctors(String query) async {
    final response = await apiService.get(ApiConstants.searchDoctors(query));
    return DoctorsResponseModel.fromJson(response.data);
  }
}
