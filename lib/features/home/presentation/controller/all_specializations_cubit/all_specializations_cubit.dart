import 'package:doctorak/features/home/domain/repositories/base_home_repository.dart';
import 'package:doctorak/features/home/presentation/controller/all_specializations_cubit/all_specializations_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllSpecializationsCubit extends Cubit<AllSpecializationsState> {
  final BaseHomeRepository _baseHomeRepository;
  AllSpecializationsCubit(this._baseHomeRepository)
    : super(const AllSpecializationsState.initial());

  Future<void> getAllSpecializations() async {
    emit(const AllSpecializationsState.loading());
    final result = await _baseHomeRepository.getAllSpecializations();
    result.when(
      failure: (apiErrorModel) =>
          emit(AllSpecializationsState.failure(apiErrorModel)),
      success: (specializationsResponseEntity) {
        emit(
          AllSpecializationsState.success(
            specializationsResponseEntity.specializationDataList,
          ),
        );
      },
    );
  }
}
