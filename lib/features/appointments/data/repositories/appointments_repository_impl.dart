import 'dart:developer';

import 'package:doctorak/core/errors/api_error_handler.dart';
import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/appointments/data/data_sources/appointments_remote_data_source.dart';
import 'package:doctorak/features/appointments/data/models/appointment_model.dart';
import 'package:doctorak/features/appointments/data/models/book_appointment_request_model.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:doctorak/features/appointments/domain/entities/book_appointment_request_entity.dart';
import 'package:doctorak/features/appointments/domain/repositories/base_appointments_repository.dart';

class AppointmentsRepositoryImpl extends BaseAppointmentsRepository {
  final BaseAppointmentsRemoteDataSource _baseAppointmentsRemoteDataSource;

  AppointmentsRepositoryImpl(this._baseAppointmentsRemoteDataSource);

  @override
  Future<ApiResult<AppointmentEntity>> bookAppointment(
    BookAppointmentRequestEntity request,
  ) async {
    try {
      final requestModel = BookAppointmentRequestModel.fromEntity(request);
      final bookAppointmentResponseModel = await _baseAppointmentsRemoteDataSource.bookAppointment(
        requestModel,
      );
      if(bookAppointmentResponseModel.appointmentData!=null){
        return Success(
          bookAppointmentResponseModel.appointmentData!.toEntity(),
        );
      }
        return Failure(ApiErrorModel(message: 'There is an error, Appointment not booked'));
      
    } catch (e) {
      log('AppointmentsRepositoryImpl.bookAppointment ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }

  @override
  Future<ApiResult<List<AppointmentEntity>>> getMyAppointments() async {
    try {
      final myAppointmentsResponseModel =
          await _baseAppointmentsRemoteDataSource.getMyAppointments();
      return Success(
        myAppointmentsResponseModel.appointmentsData?.map((e) => e.toEntity()).toList() ?? [],
      );
    } catch (e) {
      log('AppointmentsRepositoryImpl.getMyAppointments ${e.toString()}');
      final apiErrorModel = ApiErrorHandler.handle(e);
      return Failure(apiErrorModel);
    }
  }
}
