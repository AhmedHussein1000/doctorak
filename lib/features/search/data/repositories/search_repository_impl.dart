import 'dart:developer';

import 'package:doctorak/core/errors/api_error_handler.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:doctorak/features/search/domain/repositories/base_search_repository.dart';
import 'package:doctorak/core/shared/models/doctors_response_model.dart';

class SearchRepositoryImpl extends BaseSearchRepository {
  final BaseSearchRemoteDataSource _remoteDataSource;

  SearchRepositoryImpl(this._remoteDataSource);

  @override
  Future<ApiResult<List<DoctorEntity>>> searchDoctors(String query) async {
    try {
      final response = await _remoteDataSource.searchDoctors(query);
      final doctors =
          response.toEntity().doctorsList?.whereType<DoctorEntity>().toList() ??
          [];
      return Success(doctors);
    } catch (e) {
      log('SearchRepositoryImpl.searchDoctors ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }
}
