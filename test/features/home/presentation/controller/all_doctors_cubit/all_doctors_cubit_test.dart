import 'package:bloc_test/bloc_test.dart';
import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/shared/entities/doctors_response_entity.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/home/domain/repositories/base_home_repository.dart';
import 'package:doctorak/features/home/presentation/controller/all_doctors_cubit/all_doctors_cubit.dart';
import 'package:doctorak/features/home/presentation/controller/all_doctors_cubit/all_doctors_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'all_doctors_cubit_test.mocks.dart';

@GenerateMocks([BaseHomeRepository])
void main() {
  late AllDoctorsCubit allDoctorsCubit;
  late MockBaseHomeRepository mockBaseHomeRepository;

  setUp(() {
    mockBaseHomeRepository = MockBaseHomeRepository();
    allDoctorsCubit = AllDoctorsCubit(mockBaseHomeRepository);
  });

  final doctorsList = [
    DoctorEntity(id: 1, name: 'Dr. Test', email: 'test@doctor.com'),
  ];
  final doctorsResponseEntity = DoctorsResponseEntity(doctorsList: doctorsList);
  final apiErrorModel = ApiErrorModel(
    message: 'Error fetching doctors',
    code: 400,
  );

  group('AllDoctorsCubit Test', () {
    test('initial state is AllDoctorsState.initial', () {
      expect(allDoctorsCubit.state, const AllDoctorsState.initial());
    });

    blocTest<AllDoctorsCubit, AllDoctorsState>(
      'emits [Loading, Success] when getAllDoctors is successful',
      build: () {
        when(
          mockBaseHomeRepository.getAllDoctors(),
        ).thenAnswer((_) async => Success(doctorsResponseEntity));
        return allDoctorsCubit;
      },
      act: (cubit) => cubit.getAllDoctors(),
      expect: () => [const AllDoctorsState.loading(), AllDoctorsState.success(doctorsList)],
      verify: (_) => verify(mockBaseHomeRepository.getAllDoctors()).called(1),
    );

    blocTest<AllDoctorsCubit, AllDoctorsState>(
      'emits [Loading, Failure] when getAllDoctors is failure',
      build: () {
        when(
          mockBaseHomeRepository.getAllDoctors(),
        ).thenAnswer((_) async => Failure(apiErrorModel));
        return allDoctorsCubit;
      },
      act: (cubit) => cubit.getAllDoctors(),
      expect: () => [const AllDoctorsState.loading(), AllDoctorsState.failure(apiErrorModel)],
      verify: (_) => verify(mockBaseHomeRepository.getAllDoctors()).called(1),
    );
  });
}
