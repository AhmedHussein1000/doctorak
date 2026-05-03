import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/features/login/domain/entities/login_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = LoginInitial;
  const factory LoginState.loading() = LoginLoading;
  const factory LoginState.success(LoginResponseEntity loginResponseEntity) =
      LoginSuccess;
  const factory LoginState.failure(ApiErrorModel apiErrorModel) = LoginFailure;
}
