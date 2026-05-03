import 'package:doctorak/core/functions/show_toast.dart';
import 'package:doctorak/core/router/route_paths.dart';
import 'package:doctorak/features/profile/presentation/controllers/profile_cubit/profile_cubit.dart';

import 'package:doctorak/features/login/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:doctorak/features/login/presentation/controllers/login_cubit/login_state.dart';
import 'package:doctorak/features/login/presentation/widgets/login_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class LoginBodyBlocConsumer extends StatelessWidget {
  const LoginBodyBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          customToast(
            state.apiErrorModel.getAllErrorMessages(),
            ToastStates.error,
          );
        }
        if (state is LoginSuccess) {
          context.read<ProfileCubit>().getUserProfile();
          context.go(RoutePaths.homePath);
        }
      },
      builder: (context, state) => const LoginBody(),
    );
  }
}
