import 'package:doctorak/core/helpers/extensions.dart';
import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:doctorak/features/home/domain/repositories/base_home_repository.dart';
import 'package:doctorak/features/home/presentation/controller/home_cubit/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final BaseHomeRepository baseHomeRepository;
  HomeCubit(this.baseHomeRepository) : super(const Initial());

  List<SpecializationDataEntity?>? _specializationsDataList = [];
  Future<void> getSpecializations() async {
    emit(const SpecializationsLoading());
    final result = await baseHomeRepository.getHomeSpecializations();
    result.when(
      failure: (apiErrorModel) =>
          emit(SpecializationsFailure(apiErrorModel: apiErrorModel)),
      success: (specializationsResponseModel) {
        _specializationsDataList =
            specializationsResponseModel.specializationDataList ?? [];
        if (!_specializationsDataList.isNullOrEmpty()) {
          getDoctorsBySpecialization(
            specializationId: _specializationsDataList!.first!.id ?? 1,
          );
          emit(
            SpecializationsSuccess(
              specializationsDataList: _specializationsDataList!,
            ),
          );
        } else {
          emit(
            SpecializationsSuccess(
              specializationsDataList:const [],
            ),
          );
        }
      },
    );
  }

  void getDoctorsBySpecialization({required int? specializationId}) {
    List<DoctorEntity?>? doctors =
        _specializationsDataList
            ?.firstWhere(
              (specialization) => specialization?.id == specializationId,
            )
            ?.doctors ??
        [];
    if (doctors.isNullOrEmpty()) {
      emit(
        DoctorsFailure(
          apiErrorModel: ApiErrorModel(message: 'No doctors found', code: null),
        ),
      );
    } else {
      emit(DoctorsSuccess(doctors: doctors));
    }
  }
}
