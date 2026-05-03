import 'package:bloc_test/bloc_test.dart';
import 'package:doctorak/core/caches/flutter_secure_storage_manager.dart';
import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/features/login/domain/entities/login_request_body_entity.dart';
import 'package:doctorak/features/login/domain/entities/login_response_entity.dart';
import 'package:doctorak/features/login/domain/repositories/base_login_repo.dart';
import 'package:doctorak/features/login/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:doctorak/features/login/presentation/controllers/login_cubit/login_state.dart';
import 'package:doctorak/features/signup/domain/entities/user_data_entity.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'login_cubit_test.mocks.dart';

@GenerateMocks([BaseLoginRepo, FlutterSecureStorage])
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();
  late LoginCubit loginCubit;
  late MockBaseLoginRepo mockBaseLoginRepo;
  late MockFlutterSecureStorage mockFlutterSecureStorage;
  group('Login cubit test', () {
    setUp(() {
      mockBaseLoginRepo = MockBaseLoginRepo();
      mockFlutterSecureStorage = MockFlutterSecureStorage();
      FlutterSecureStorageManager.setMockInstance(mockFlutterSecureStorage);
      loginCubit = LoginCubit(mockBaseLoginRepo);
    });
    const loginResponseEntity = LoginResponseEntity(
      code: 200,
      message: 'success',
      status: true,
      userData: UserDataEntity(token: 'token', userName: 'ahmed'),
    );
    const loginRequestBody = LoginRequestBodyEntity(
      email: 'test@test.com',
      password: 'password',
    );
    const apiErrorModel = ApiErrorModel(message: 'failure', code: 500);
    test('initial state is LoginState.initial', () {
      expect(loginCubit.state, const LoginState.initial());
    });
    blocTest<LoginCubit, LoginState>(
      'emits [LoginState.loading, LoginState.success] when login is successful',
      build: () {
        when(
          mockBaseLoginRepo.login(any),
        ).thenAnswer((_) async => Success(loginResponseEntity));
        when(
          mockFlutterSecureStorage.write(
            key: anyNamed('key'),
            value: anyNamed('value'),
          ),
        ).thenAnswer((_) async {});
        when(
          mockFlutterSecureStorage.read(key: anyNamed('key')),
        ).thenAnswer((_) async => 'token');

        return loginCubit;
      },
      act: (cubit) => cubit.login(loginRequestBody),
      expect: () => [const LoginState.loading(), LoginState.success(loginResponseEntity)],
      verify: (_) => verify(mockBaseLoginRepo.login(any)).called(1),
    );
    blocTest<LoginCubit, LoginState>(
      'emits [LoginState.loading, LoginState.failure] when login is failed',
      build: () {
        when(
          mockBaseLoginRepo.login(any),
        ).thenAnswer((_) async => Failure(apiErrorModel));
        when(
          mockFlutterSecureStorage.write(
            key: anyNamed('key'),
            value: anyNamed('value'),
          ),
        ).thenAnswer((_) async {});
        when(
          mockFlutterSecureStorage.read(key: anyNamed('key')),
        ).thenAnswer((_) async => 'token');
        return loginCubit;
      },
      act: (cubit) => cubit.login(loginRequestBody),
      expect: () => [const LoginState.loading(), LoginState.failure(apiErrorModel)],
      verify: (_) => verify(mockBaseLoginRepo.login(any)).called(1),
    );
  });
}
