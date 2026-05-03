import 'package:bloc_test/bloc_test.dart';
import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/signup/domain/entities/signup_request_body_entity.dart';
import 'package:doctorak/features/signup/domain/entities/signup_response_entity.dart';
import 'package:doctorak/features/signup/domain/entities/user_data_entity.dart';
import 'package:doctorak/features/signup/domain/repositories/base_signup_repo.dart';
import 'package:doctorak/features/signup/presentation/controllers/signup_cubit/signup_cubit.dart';
import 'package:doctorak/features/signup/presentation/controllers/signup_cubit/signup_state.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'signup_cubit_test.mocks.dart';

@GenerateMocks([BaseSignupRepo])
void main() {
  late SignupCubit signupCubit;
  late MockBaseSignupRepo mockSignupRepo;

  setUp(() {
    mockSignupRepo = MockBaseSignupRepo();
    signupCubit = SignupCubit(mockSignupRepo);
  });

  const signupRequestBodyEntity = SignupRequestBodyEntity(
    userName: 'test',
    email: 'test@test.com',
    phone: '1234567890',
    gender: 0,
    password: 'password',
    passwordConfirmation: 'password',
  );

  final signupResponseEntity = SignupResponseEntity(
    message: 'success',
    code: 200,
    status: true,
    userData: UserDataEntity(token: 'token', userName: 'test'),
  );

  final apiErrorModel = ApiErrorModel(message: 'error', code: 400);

  group('SignupCubit', () {
    test('initial state is SignupState.initial', () {
      expect(signupCubit.state, const SignupState.initial());
    });

    blocTest<SignupCubit, SignupState>(
      'emits [SignupState.loading, SignupState.success] when signup is successful',
      build: () {
        when(
          mockSignupRepo.signup(any),
        ).thenAnswer((_) async => Success(signupResponseEntity));
        return signupCubit;
      },
      act: (cubit) => cubit.signup(signupRequestBodyEntity),
      expect: () => [const SignupState.loading(), SignupState.success(signupResponseEntity)],
      verify: (_) {
        verify(mockSignupRepo.signup(any)).called(1);
      },
    );

    blocTest<SignupCubit, SignupState>(
      'emits [SignupState.loading, SignupState.failure] when signup fails',
      build: () {
        when(
          mockSignupRepo.signup(any),
        ).thenAnswer((_) async => Failure(apiErrorModel));
        return signupCubit;
      },
      act: (cubit) => cubit.signup(signupRequestBodyEntity),
      expect: () => [const SignupState.loading(), SignupState.failure(apiErrorModel)],
      verify: (_) {
        verify(mockSignupRepo.signup(any)).called(1);
      },
    );
  });
}
