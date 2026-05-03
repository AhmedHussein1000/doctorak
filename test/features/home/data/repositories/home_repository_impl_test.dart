import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/shared/models/doctors_response_model.dart';
import 'package:doctorak/features/home/data/data_source/home_remote_data_source.dart';
import 'package:doctorak/core/shared/models/doctor_model.dart';
import 'package:doctorak/features/home/data/models/specialization_data_model.dart';
import 'package:doctorak/features/home/data/models/specializations_response_model.dart';
import 'package:doctorak/features/home/data/repositories/home_repository_impl.dart';
import 'package:doctorak/core/shared/entities/doctors_response_entity.dart';
import 'package:doctorak/features/home/domain/entities/specializations_response_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'home_repository_impl_test.mocks.dart';

@GenerateMocks([BaseHomeRemoteDataSource])
void main() {
  late HomeRepositoryImpl homeRepositoryImpl;
  late MockBaseHomeRemoteDataSource mockBaseHomeRemoteDataSource;
  group('home repo test', () {
    setUp(() {
      mockBaseHomeRemoteDataSource = MockBaseHomeRemoteDataSource();
      homeRepositoryImpl = HomeRepositoryImpl(mockBaseHomeRemoteDataSource);
    });
    final specializationsResponseModel = SpecializationsResponseModel(
      specializationDataList: [
        SpecializationDataModel(
          id: 0,
          name: 'speciality',
          doctors: [
            DoctorModel(
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
    const apiErrorModel = ApiErrorModel(message: 'Unauthorized', code: 401);
    test(
      'should return SpecializationsResponseModel when the call to remote data source is successful',
      () async {
        when(
          mockBaseHomeRemoteDataSource.getHomeSpecializations(),
        ).thenAnswer((_) async => specializationsResponseModel);
        final result = await homeRepositoryImpl.getHomeSpecializations();
        expect(result, isA<ApiResult<SpecializationsResponseEntity>>());
        result.when(
          success: (specializationsResponseEntity) {
            expect(
              specializationsResponseEntity.specializationDataList!.first!.name,
              specializationsResponseModel.specializationDataList!.first!.name,
            );
            expect(
              specializationsResponseEntity
                  .specializationDataList!
                  .first!
                  .doctors!
                  .first!
                  .name,
              specializationsResponseModel
                  .specializationDataList!
                  .first!
                  .doctors!
                  .first!
                  .name,
            );
          },
          failure: (apiErrorModel) =>
              fail('Expected Success : ${apiErrorModel.message}'),
        );
        verify(mockBaseHomeRemoteDataSource.getHomeSpecializations()).called(1);
      },
    );
    test(
      'should return SpecializationsResponseModel when the call to getAllSpecializations is successful',
      () async {
        when(
          mockBaseHomeRemoteDataSource.getAllSpecializations(),
        ).thenAnswer((_) async => specializationsResponseModel);
        final result = await homeRepositoryImpl.getAllSpecializations();
        expect(result, isA<ApiResult<SpecializationsResponseEntity>>());
        result.when(
          success: (specializationsResponseEntity) {
            expect(
              specializationsResponseEntity.specializationDataList!.first!.name,
              specializationsResponseModel.specializationDataList!.first!.name,
            );
          },
          failure: (apiErrorModel) =>
              fail('Expected Success : ${apiErrorModel.message}'),
        );
        verify(mockBaseHomeRemoteDataSource.getAllSpecializations()).called(1);
      },
    );
    test(
      'should return ApiErrorModel when the call to getAllSpecializations is unsuccessful',
      () async {
        when(
          mockBaseHomeRemoteDataSource.getAllSpecializations(),
        ).thenThrow(apiErrorModel);
        final result = await homeRepositoryImpl.getAllSpecializations();
        expect(result, isA<ApiResult<SpecializationsResponseEntity>>());
        result.when(
          success: (specializationsResponseEntity) =>
              fail('Expected Failure $specializationsResponseEntity'),
          failure: (apiErrorModel) {
            expect(apiErrorModel, isA<ApiErrorModel>());
          },
        );
        verify(mockBaseHomeRemoteDataSource.getAllSpecializations()).called(1);
      },
    );

    test(
      'should return DoctorsResponseEntity when the call to getAllDoctors is successful',
      () async {
        final doctorsResponseModel = DoctorsResponseModel(
          doctorsList: [
            DoctorModel(id: 1, name: 'Dr. Test', email: 'test@doctor.com'),
          ],
        );
        when(
          mockBaseHomeRemoteDataSource.getAllDoctors(),
        ).thenAnswer((_) async => doctorsResponseModel);
        final result = await homeRepositoryImpl.getAllDoctors();
        expect(result, isA<ApiResult<DoctorsResponseEntity>>());
        result.when(
          success: (doctorsResponseEntity) {
            expect(
              doctorsResponseEntity.doctorsList!.first!.name,
              doctorsResponseModel.doctorsList!.first!.name,
            );
          },
          failure: (apiErrorModel) =>
              fail('Expected Success : ${apiErrorModel.message}'),
        );
        verify(mockBaseHomeRemoteDataSource.getAllDoctors()).called(1);
      },
    );
    test(
      'should return ApiErrorModel when the call to getAllDoctors is unsuccessful',
      () async {
        when(
          mockBaseHomeRemoteDataSource.getAllDoctors(),
        ).thenThrow(apiErrorModel);
        final result = await homeRepositoryImpl.getAllDoctors();
        expect(result, isA<ApiResult<DoctorsResponseEntity>>());
        result.when(
          success: (doctorsResponseEntity) =>
              fail('Expected Failure $doctorsResponseEntity'),
          failure: (apiErrorModel) {
            expect(apiErrorModel, isA<ApiErrorModel>());
          },
        );
        verify(mockBaseHomeRemoteDataSource.getAllDoctors()).called(1);
      },
    );
  });
}
