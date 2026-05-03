import 'package:doctorak/features/signup/domain/entities/signup_request_body_entity.dart';
import 'package:doctorak/features/signup/domain/repositories/base_signup_repo.dart';
import 'package:doctorak/features/signup/presentation/controllers/signup_cubit/signup_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupCubit extends Cubit<SignupState> {
  final BaseSignupRepo baseSignupRepos;

  SignupCubit(this.baseSignupRepos) : super(const SignupState.initial());
  Future<void> signup(SignupRequestBodyEntity signupRequestBody) async {
    emit(const SignupState.loading());
    final result = await baseSignupRepos.signup(signupRequestBody);

    result.when(
      failure: (apiErrorModel) => emit(SignupState.failure(apiErrorModel)),
      success: (signupResponse) => emit(SignupState.success(signupResponse)),
    );
  }
}
