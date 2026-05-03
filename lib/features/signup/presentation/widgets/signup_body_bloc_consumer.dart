import 'package:doctorak/core/functions/custom_alert_dialog.dart';
import 'package:doctorak/core/functions/show_toast.dart';
import 'package:doctorak/features/signup/presentation/controllers/signup_cubit/signup_cubit.dart';
import 'package:doctorak/features/signup/presentation/controllers/signup_cubit/signup_state.dart';
import 'package:doctorak/features/signup/presentation/widgets/signup_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SignupBodyBlocConsumer extends StatelessWidget {
  const SignupBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupFailure) {
          customAlertDialog(
            context: context,
            message: state.apiErrorModel.getAllErrorMessages(),
          );
        }
        if (state is SignupSuccess) {
          customToast(
            state.signupResponse.message ??
                'Account has been created successfully',
            ToastStates.success,
          );
          context.pop();
        }
      },
      builder: (context, state) {
        return const SignupBody();
      },
    );
  }
}
