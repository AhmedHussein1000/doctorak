import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:doctorak/features/login/data/models/login_response_model.dart';
import 'package:doctorak/features/login/data/repositories/login_repo_impl.dart';
import 'package:doctorak/features/login/domain/entities/login_request_body_entity.dart';
import 'package:doctorak/features/login/domain/entities/login_response_entity.dart';
import 'package:doctorak/features/signup/data/models/user_data_model.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'login_repo_impl_test.mocks.dart';

@GenerateMocks([BaseLoginRemoteDataSource])
void main() {
  group('login repo test', () {
    late MockBaseLoginRemoteDataSource mockBaseLoginRemoteDataSource;
    late LoginRepoImpl loginRepoImpl;

    setUp(() {
      mockBaseLoginRemoteDataSource = MockBaseLoginRemoteDataSource();
      loginRepoImpl = LoginRepoImpl(mockBaseLoginRemoteDataSource);
    });
    const loginRequestBody = LoginRequestBodyEntity(
      email: 'test@test.com',
      password: 'password',
    );
    final loginResponseModel = LoginResponseModel(
      code: 200,
      message: 'success',
      status: true,
      userData: UserDataModel(token: 'token', userName: 'ahmed'),
    );
    final apiErrorModel = ApiErrorModel(message: 'login failed', code: 500);
    test(
      'should return LoginResponseEntity when the call to remote data source is successful',
      () async {
        when(
          mockBaseLoginRemoteDataSource.login(any),
        ).thenAnswer((_) async => loginResponseModel);
        final result = await loginRepoImpl.login(loginRequestBody);
        expect(result, isA<ApiResult<LoginResponseEntity>>());
        result.when(
          failure: (apiErrorModel) =>
              fail('Expected success but got error: ${apiErrorModel.message}'),
          success: (loginResponseEntity) {
            expect(loginResponseEntity.code, loginResponseModel.code);
            expect(loginResponseEntity.message, loginResponseModel.message);
            expect(loginResponseEntity.status, loginResponseModel.status);
            expect(
              loginResponseEntity.userData!.token,
              loginResponseModel.userData!.token,
            );
          },
        );
        verify(mockBaseLoginRemoteDataSource.login(any)).called(1);
      },
    );
    test(
      'should return ApiErrorModel when the call to remote data source is unsuccessful',
      () async {
        when(mockBaseLoginRemoteDataSource.login(any)).thenThrow(apiErrorModel);
        final result = await loginRepoImpl.login(loginRequestBody);
        expect(result, isA<ApiResult<LoginResponseEntity>>());
        result.when(
          success: (loginResponseEntity) => fail('Expected failure'),
          failure: (apiError) {
            expect(apiError, isA<ApiErrorModel>());
          },
        );
        verify(mockBaseLoginRemoteDataSource.login(any)).called(1);
      },
    );
  });
}
