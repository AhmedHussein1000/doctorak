// import 'package:bloc_test/bloc_test.dart';
// import 'package:doctorak/core/network/api_error_model.dart';
// import 'package:doctorak/core/network/api_result.dart';
// import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
// import 'package:doctorak/features/home/domain/entities/specializations_response_entity.dart';
// import 'package:doctorak/features/home/domain/repositories/base_home_repository.dart';
// import 'package:doctorak/features/home/presentation/controller/all_specializations_cubit/all_specializations_cubit.dart';
// import 'package:doctorak/features/home/presentation/controller/all_specializations_cubit/all_specializations_state.dart';
// import 'package:doctorak/features/home/presentation/controller/home_cubit/home_state.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';

// import 'all_specializations_cubit_test.mocks.dart';

// @GenerateMocks([BaseHomeRepository])
// void main() {
//   late AllSpecializationsCubit allSpecializationsCubit;
//   late MockBaseHomeRepository mockBaseHomeRepository;

//   setUp(() {
//     mockBaseHomeRepository = MockBaseHomeRepository();
//     allSpecializationsCubit = AllSpecializationsCubit(mockBaseHomeRepository);
//   });

//   final specializationDataList = [
//     SpecializationDataEntity(id: 1, name: 'Speciality Test'),
//   ];
//   final specializationsResponseEntity = SpecializationsResponseEntity(
//     specializationDataList: specializationDataList,
//   );
//   final apiErrorModel = ApiErrorModel(
//     message: 'Error fetching specializations',
//     code: 400,
//   );

//   group('AllSpecializationsCubit Test', () {
//     test('initial state is AllSpecializationsState.initial', () {
//       expect(
//         allSpecializationsCubit.state,
//         const Initial(),
//       );
//     });

//     blocTest<AllSpecializationsCubit, AllSpecializationsState>(
//       'emits [Loading, Success] when getAllSpecializations is successful',
//       build: () {
//         when(mockBaseHomeRepository.getAllSpecializations()).thenAnswer(
//           (_) async => Success(specializationsResponseEntity),
//         );
//         return allSpecializationsCubit;
//       },
//       act: (cubit) => cubit.getAllSpecializations(),
//       expect: () => [
//         const Loading(),
//         Success(specializationDataList),
//       ],
//       verify: (_) =>
//           verify(mockBaseHomeRepository.getAllSpecializations()).called(1),
//     );

//     blocTest<AllSpecializationsCubit, AllSpecializationsState>(
//       'emits [Loading, Failure] when getAllSpecializations is failure',
//       build: () {
//         when(
//           mockBaseHomeRepository.getAllSpecializations(),
//         ).thenAnswer((_) async => Failure(apiErrorModel));
//         return allSpecializationsCubit;
//       },
//       act: (cubit) => cubit.getAllSpecializations(),
//       expect: () => [
//         const Loading(),
//         Failure(apiErrorModel),
//       ],
//       verify: (_) =>
//           verify(mockBaseHomeRepository.getAllSpecializations()).called(1),
//     );
//   });
// }
