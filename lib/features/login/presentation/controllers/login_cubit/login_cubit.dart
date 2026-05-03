import 'package:doctorak/core/caches/cache_keys.dart';
import 'package:doctorak/core/caches/flutter_secure_storage_manager.dart';
import 'package:doctorak/features/login/domain/entities/login_request_body_entity.dart';
import 'package:doctorak/features/login/domain/entities/login_response_entity.dart';
import 'package:doctorak/features/login/domain/repositories/base_login_repo.dart';
import 'package:doctorak/features/login/presentation/controllers/login_cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginCubit extends Cubit<LoginState> {
  final BaseLoginRepo baseLoginRepo;
  LoginCubit(this.baseLoginRepo) : super(const LoginState.initial());
  Future<void> login(LoginRequestBodyEntity loginRequestBodyEntity) async {
    emit(const LoginState.loading());
    final result = await baseLoginRepo.login(loginRequestBodyEntity);
    result.when(
      success: (loginResponseEntity) async {
        await _saveUserToken(loginResponseEntity);
        emit(LoginState.success(loginResponseEntity));
      },
      failure: (apiErrorModel) => emit(LoginState.failure(apiErrorModel)),
    );
  }

  Future<void> _saveUserToken(LoginResponseEntity loginResponseEntity) async {
    await FlutterSecureStorageManager.write(
      CacheKeys.token,
      loginResponseEntity.userData?.token ?? '',
    );
    userToken = await FlutterSecureStorageManager.read(CacheKeys.token);
  }
}
