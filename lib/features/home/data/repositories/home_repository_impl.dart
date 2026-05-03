import 'dart:developer';
import 'package:doctorak/core/errors/api_error_handler.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/home/data/data_source/home_remote_data_source.dart';
import 'package:doctorak/core/shared/entities/doctors_response_entity.dart';
import 'package:doctorak/features/home/domain/entities/specializations_response_entity.dart';
import 'package:doctorak/features/home/domain/repositories/base_home_repository.dart';
import 'package:doctorak/core/shared/models/doctors_response_model.dart';
import 'package:doctorak/features/home/data/models/specializations_response_model.dart';

class HomeRepositoryImpl extends BaseHomeRepository {
  final BaseHomeRemoteDataSource baseHomeRemoteDataSource;

  HomeRepositoryImpl(this.baseHomeRemoteDataSource);

  @override
  Future<ApiResult<SpecializationsResponseEntity>>
  getHomeSpecializations() async {
    try {
      final specializationsResponseModel = await baseHomeRemoteDataSource
          .getHomeSpecializations();
      return Success(specializationsResponseModel.toEntity());
    } catch (e) {
      log('HomeRepositoryImpl.getSpecializations ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }

  @override
  Future<ApiResult<SpecializationsResponseEntity>>
  getAllSpecializations() async {
    try {
      final specializationsResponseModel = await baseHomeRemoteDataSource
          .getAllSpecializations();
      return Success(specializationsResponseModel.toEntity());
    } catch (e) {
      log('HomeRepositoryImpl.getSpecializations ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }

  @override
  Future<ApiResult<DoctorsResponseEntity>> getAllDoctors() async {
    try {
      final doctorsResponseModel = await baseHomeRemoteDataSource
          .getAllDoctors();
      return Success(doctorsResponseModel.toEntity());
    } catch (e) {
      log('HomeRepositoryImpl.getAllDoctors ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }
}
