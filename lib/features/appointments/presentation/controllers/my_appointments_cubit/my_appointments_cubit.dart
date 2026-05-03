import 'package:doctorak/features/appointments/domain/repositories/base_appointments_repository.dart';
import 'package:doctorak/features/appointments/presentation/controllers/my_appointments_cubit/my_appointments_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyAppointmentsCubit extends Cubit<MyAppointmentsState> {
  final BaseAppointmentsRepository _appointmentsRepository;

  MyAppointmentsCubit(this._appointmentsRepository)
      : super(const MyAppointmentsState.initial());

  Future<void> getMyAppointments() async {
    emit(const MyAppointmentsState.loading());
    final result = await _appointmentsRepository.getMyAppointments();
    result.when(
      success: (appointments) => emit(MyAppointmentsState.success(appointments)),
      failure: (apiErrorModel) =>
          emit(MyAppointmentsState.failure(apiErrorModel)),
    );
  }
}
