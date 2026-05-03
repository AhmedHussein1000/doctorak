import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:doctorak/features/appointments/domain/entities/book_appointment_request_entity.dart';

abstract class BaseAppointmentsRepository {
  Future<ApiResult<AppointmentEntity>> bookAppointment(
    BookAppointmentRequestEntity request,
  );
  Future<ApiResult<List<AppointmentEntity>>> getMyAppointments();
}
