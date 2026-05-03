import 'package:doctorak/features/home/domain/repositories/base_home_repository.dart';
import 'package:doctorak/features/home/presentation/controller/all_doctors_cubit/all_doctors_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllDoctorsCubit extends Cubit<AllDoctorsState> {
  final BaseHomeRepository _baseHomeRepository;
  AllDoctorsCubit(this._baseHomeRepository)
    : super(const AllDoctorsState.initial());
  Future<void> getAllDoctors() async {
    emit(const AllDoctorsState.loading());
    final result = await _baseHomeRepository.getAllDoctors();
    result.when(
      failure: (apiErrorModel) => emit(AllDoctorsState.failure(apiErrorModel)),
      success: (allDoctorsResponse) =>
          emit(AllDoctorsState.success(allDoctorsResponse.doctorsList)),
    );
  }
}
