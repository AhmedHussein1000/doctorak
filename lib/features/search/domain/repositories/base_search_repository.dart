import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';

abstract class BaseSearchRepository {
  Future<ApiResult<List<DoctorEntity>>> searchDoctors(String query);
}
