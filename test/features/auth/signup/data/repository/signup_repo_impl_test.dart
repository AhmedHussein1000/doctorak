import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/signup/data/data_sources/signup_remote_data_source.dart';
import 'package:doctorak/features/signup/data/models/signup_response_model.dart';
import 'package:doctorak/features/signup/data/models/user_data_model.dart';
import 'package:doctorak/features/signup/data/repository/signup_repo_impl.dart';
import 'package:doctorak/features/signup/domain/entities/signup_request_body_entity.dart';
import 'package:doctorak/features/signup/domain/entities/signup_response_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'signup_repo_impl_test.mocks.dart';

@GenerateMocks([BaseSignupRemoteDataSource])
void main() {
  late SignupReposImpl signupRepo;
  late MockBaseSignupRemoteDataSource mockSignupRemoteDataSource;

  setUp(() {
    mockSignupRemoteDataSource = MockBaseSignupRemoteDataSource();
    signupRepo = SignupReposImpl(mockSignupRemoteDataSource);
  });

  const signupRequestBodyEntity = SignupRequestBodyEntity(
    userName: 'test',
    email: 'test@test.com',
    phone: '1234567890',
    gender: 0,
    password: 'password',
    passwordConfirmation: 'password',
  );

  final signupResponseModel = SignupResponseModel(
    message: 'success',
    code: 200,
    status: true,
    userData: UserDataModel(token: 'token', userName: 'test'),
  );

  final apiErrorModel = ApiErrorModel(message: 'error', code: 400);

  group('signup repo', () {
    test(
      'should return SignupResponseEntity when the call to remote data source is successful',
      () async {
        when(
          mockSignupRemoteDataSource.signup(any),
        ).thenAnswer((_) async => signupResponseModel);

        final result = await signupRepo.signup(signupRequestBodyEntity);

        expect(result, isA<ApiResult<SignupResponseEntity>>());
        result.when(
          success: (signupResponseEntity) {
            expect(signupResponseEntity.message, signupResponseModel.message);
            expect(signupResponseEntity.code, signupResponseModel.code);
            expect(
              signupResponseEntity.userData!.token,
              signupResponseModel.userData!.token,
            );
          },
          failure: (error) => fail('Expected success but got error: $error'),
        );
        verify(mockSignupRemoteDataSource.signup(any)).called(1);
      },
    );

    test(
      'should return ApiErrorModel when the call to remote data source is unsuccessful',
      () async {
        when(mockSignupRemoteDataSource.signup(any)).thenThrow(
          apiErrorModel,
        );
        

        final result = await signupRepo.signup(signupRequestBodyEntity);

        expect(result, isA<ApiResult<SignupResponseEntity>>());
        result.when(
          success: (_) => fail('Expected failure'),
          failure: (error) => expect(error, isA<ApiErrorModel>()),
        );
        verify(mockSignupRemoteDataSource.signup(any)).called(1);
      },
    );
  });
}
