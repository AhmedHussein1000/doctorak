import 'package:doctorak/core/helpers/date_time_helper.dart';
import 'package:doctorak/core/services/notification_service.dart';
import 'package:doctorak/core/services/payment_data.dart';
import 'package:doctorak/features/appointments/domain/entities/book_appointment_request_entity.dart';
import 'package:doctorak/features/appointments/domain/repositories/base_appointments_repository.dart';
import 'package:doctorak/features/appointments/domain/repositories/base_payment_repository.dart';
import 'package:doctorak/features/appointments/presentation/controllers/book_appointment_cubit/book_appointment_state.dart';
import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookAppointmentCubit extends Cubit<BookAppointmentState> {
  final BaseAppointmentsRepository _appointmentsRepository;
  final BasePaymentRepository _paymentRepository;
  final NotificationService _notificationService;
  final NotificationsCubit _notificationsCubit;

  BookAppointmentCubit(
    this._appointmentsRepository,
    this._paymentRepository,
    this._notificationService,
    this._notificationsCubit,
  ) : super(const BookAppointmentState.initial());

  Future<void> bookAppointment(BookAppointmentRequestEntity request) async {
    emit(const BookAppointmentState.loading());
    final result = await _appointmentsRepository.bookAppointment(request);
    result.when(
      success: (appointment) {
        emit(BookAppointmentState.success(appointment));
        _notificationService.showBookingConfirmation(appointment);
        _notificationService.scheduleAppointmentReminder(appointment);
        _notificationsCubit.addBookingConfirmation(appointment);
        final reminderAt = DateTimeHelper.getReminderDateTime(appointment.appointmentTime);
        final now = DateTime.now();
        final isSameDay = reminderAt.year == now.year &&
            reminderAt.month == now.month &&
            reminderAt.day == now.day;
        if (isSameDay) {
          _notificationsCubit.addAppointmentReminder(appointment);
        }
      },
      failure: (error) => emit(BookAppointmentState.failure(error)),
    );
  }

  void emitPaymentProcessing() =>
      emit(const BookAppointmentState.paymentProcessing());

  Future<void> processStripeAndBook({
    required PaymentData paymentData,
    required BookAppointmentRequestEntity request,
  }) async {
    emit(const BookAppointmentState.paymentProcessing());
    final paymentResult =
        await _paymentRepository.processStripePayment(paymentData);
    paymentResult.when(
      success: (_) => bookAppointment(request),
      failure: (error) => emit(BookAppointmentState.failure(error)),
    );
  }
}
