import 'package:bloc_test/bloc_test.dart';
import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:doctorak/features/home/domain/entities/specializations_response_entity.dart';
import 'package:doctorak/features/home/domain/repositories/base_home_repository.dart';
import 'package:doctorak/features/home/presentation/controller/home_cubit/home_cubit.dart';
import 'package:doctorak/features/home/presentation/controller/home_cubit/home_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_cubit_test.mocks.dart';

@GenerateMocks([BaseHomeRepository])
void main() {
  late HomeCubit homeCubit;
  late MockBaseHomeRepository mockBaseHomeRepository;
  setUp(() {
    mockBaseHomeRepository = MockBaseHomeRepository();
    homeCubit = HomeCubit(mockBaseHomeRepository);
  });
  final specializationsResponseEntity = SpecializationsResponseEntity(
    specializationDataList: [
      SpecializationDataEntity(
        id: 0,
        name: 'speciality',
        doctors: [
          DoctorEntity(
            degree: 'degree',
            name: 'ahmed',
            email: 'ahmed@gmail.com',
            gender: 'male',
            phone: '0111111111',
            appointPrice: 300,
            id: 1,
          ),
        ],
      ),
    ],
  );
  final apiErrorModel = ApiErrorModel(message: 'error', code: 400);

  test('initial state is SignupState.initial', () {
    expect(homeCubit.state, const Initial());
  });
  blocTest<HomeCubit, HomeState>(
    'emits [HomeState.specializationsLoading, HomeState.doctorsSuccess, HomeState.specializationsSuccess] when getSpecializations is successful',
    build: () {
      when(mockBaseHomeRepository.getHomeSpecializations()).thenAnswer(
        (_) async => Success(specializationsResponseEntity),
      );
      return homeCubit;
    },
    act: (cubit) => cubit.getSpecializations(),
    expect: () => [
      SpecializationsLoading(),
      DoctorsSuccess(
        doctors: specializationsResponseEntity
            .specializationDataList!
            .first!
            .doctors,
      ),
      SpecializationsSuccess(
        specializationsDataList:
            specializationsResponseEntity.specializationDataList,
      ),
    ],
    verify: (_) =>
        verify(mockBaseHomeRepository.getHomeSpecializations()).called(1),
  );

  blocTest<HomeCubit, HomeState>(
    'emits [HomeState.specializationsLoading, HomeState.specializationsFailure] when getSpecializations is failure',
    build: () {
      when(
        mockBaseHomeRepository.getHomeSpecializations(),
      ).thenAnswer((_) async => Failure(apiErrorModel));
      return homeCubit;
    },
    act: (cubit) => cubit.getSpecializations(),
    expect: () => [
      SpecializationsLoading(),
      SpecializationsFailure(apiErrorModel: apiErrorModel),
    ],
    verify: (_) =>
        verify(mockBaseHomeRepository.getHomeSpecializations()).called(1),
  );
}
