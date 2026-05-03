import 'package:bloc_test/bloc_test.dart';
import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/services/notification_service.dart';
import 'package:doctorak/features/appointments/domain/entities/appointment_entity.dart';
import 'package:doctorak/features/appointments/domain/entities/book_appointment_request_entity.dart';
import 'package:doctorak/features/appointments/domain/repositories/base_appointments_repository.dart';
import 'package:doctorak/features/appointments/domain/repositories/base_payment_repository.dart';
import 'package:doctorak/features/appointments/presentation/controllers/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:doctorak/features/appointments/presentation/controllers/book_appointment_cubit/book_appointment_state.dart' hide Failure, Success;
import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_cubit.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'book_appointment_cubit_test.mocks.dart';

@GenerateMocks([
  BaseAppointmentsRepository,
  BasePaymentRepository,
  NotificationService,
  NotificationsCubit,
])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  late BookAppointmentCubit cubit;
  late MockBaseAppointmentsRepository mockAppointmentsRepo;
  late MockBasePaymentRepository mockPaymentRepo;
  late MockNotificationService mockNotificationService;
  late MockNotificationsCubit mockNotificationsCubit;

  const request = BookAppointmentRequestEntity(
    doctorId: 1,
    startTime: '2026-06-15T10:00:00.000Z',
    notes: 'test notes',
  );

  const appointment = AppointmentEntity(
    id: 42,
    appointmentTime: '2026-06-15T10:00:00.000Z',
    appointmentEndTime: '2026-06-15T10:30:00.000Z',
    status: 'pending',
  );

  const apiError = ApiErrorModel(message: 'Something went wrong', code: 500);

  setUp(() {
    mockAppointmentsRepo = MockBaseAppointmentsRepository();
    mockPaymentRepo = MockBasePaymentRepository();
    mockNotificationService = MockNotificationService();
    mockNotificationsCubit = MockNotificationsCubit();

    when(
      mockNotificationService.showBookingConfirmation(any),
    ).thenAnswer((_) async {});
    when(
      mockNotificationService.scheduleAppointmentReminder(any),
    ).thenAnswer((_) async {});
    
    cubit = BookAppointmentCubit(
      mockAppointmentsRepo,
      mockPaymentRepo,
      mockNotificationService,
      mockNotificationsCubit,
    );
  });

  tearDown(() => cubit.close());

  group('BookAppointmentCubit', () {
    test('initial state is BookAppointmentState.initial', () {
      expect(cubit.state, const BookAppointmentState.initial());
    });

    group('bookAppointment', () {
      blocTest<BookAppointmentCubit, BookAppointmentState>(
        'emits [loading, success] and triggers notifications on success',
        build: () {
          when(
            mockAppointmentsRepo.bookAppointment(any),
          ).thenAnswer((_) async => const Success(appointment));
          return cubit;
        },
        act: (c) => c.bookAppointment(request),
        expect: () => [
          const BookAppointmentState.loading(),
          const BookAppointmentState.success(appointment),
        ],
        verify: (_) {
          verify(mockAppointmentsRepo.bookAppointment(any)).called(1);
          verify(
            mockNotificationService.showBookingConfirmation(appointment),
          ).called(1);
          verify(
            mockNotificationService.scheduleAppointmentReminder(appointment),
          ).called(1);
          verify(
            mockNotificationsCubit.addBookingConfirmation(appointment),
          ).called(1);
        },
      );

      blocTest<BookAppointmentCubit, BookAppointmentState>(
        'emits [loading, failure] and does NOT trigger notifications on failure',
        build: () {
          when(
            mockAppointmentsRepo.bookAppointment(any),
          ).thenAnswer((_) async => const Failure(apiError));
          return cubit;
        },
        act: (c) => c.bookAppointment(request),
        expect: () => [
          const BookAppointmentState.loading(),
          const BookAppointmentState.failure(apiError),
        ],
        verify: (_) {
          verifyNever(
            mockNotificationService.showBookingConfirmation(any),
          );
          verifyNever(
            mockNotificationService.scheduleAppointmentReminder(any),
          );
        },
      );
    });
  });
}
