import 'package:doctorak/core/network/api_constants.dart';
import 'package:doctorak/core/network/dio_service.dart';
import 'package:doctorak/features/appointments/data/models/book_appointment_request_model.dart';
import 'package:doctorak/features/appointments/data/models/book_appointment_response_model.dart';
import 'package:doctorak/features/appointments/data/models/my_appointments_response_model.dart';

abstract class BaseAppointmentsRemoteDataSource {
  Future<BookAppointmentResponseModel> bookAppointment(
    BookAppointmentRequestModel request,
  );
  Future<MyAppointmentsResponseModel> getMyAppointments();
}

class AppointmentsRemoteDataSourceImpl extends BaseAppointmentsRemoteDataSource {
  final DioService apiService;

  AppointmentsRemoteDataSourceImpl(this.apiService);

  @override
  Future<BookAppointmentResponseModel> bookAppointment(
    BookAppointmentRequestModel request,
  ) async {
    final response = await apiService.post(
      ApiConstants.bookAppointment,
      data: request.toJson(),
    );

    return BookAppointmentResponseModel.fromJson(response.data);
  }

  @override
  Future<MyAppointmentsResponseModel> getMyAppointments() async {
    final response = await apiService.get(ApiConstants.myAppointments);

    return MyAppointmentsResponseModel.fromJson(response.data);
  }
}
