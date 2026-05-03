import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/shared/entities/doctors_response_entity.dart';
import 'package:doctorak/features/home/domain/entities/specializations_response_entity.dart';

abstract class BaseHomeRepository {
  Future<ApiResult<SpecializationsResponseEntity>> getHomeSpecializations();
  Future<ApiResult<SpecializationsResponseEntity>> getAllSpecializations();
  Future<ApiResult<DoctorsResponseEntity>> getAllDoctors();
}
