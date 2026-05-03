import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/features/signup/domain/entities/signup_response_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'signup_state.freezed.dart';

@freezed
class SignupState with _$SignupState {
  const factory SignupState.initial() = SignupInitial;
  const factory SignupState.loading() = SignupLoading;
  const factory SignupState.success(SignupResponseEntity signupResponse) = SignupSuccess;
  const factory SignupState.failure(ApiErrorModel apiErrorModel) = SignupFailure;
}
