import 'package:doctorak/core/helpers/extensions.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/widgets/custom_button.dart';
import 'package:doctorak/core/widgets/custom_text_button.dart';
import 'package:doctorak/core/widgets/custom_text_form_field.dart';
import 'package:doctorak/features/login/domain/entities/login_request_body_entity.dart';
import 'package:doctorak/features/login/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:doctorak/features/login/presentation/controllers/login_cubit/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginFormAndActionButtons extends StatefulWidget {
  const LoginFormAndActionButtons({super.key});

  @override
  State<LoginFormAndActionButtons> createState() =>
      _LoginFormAndActionButtonsState();
}

class _LoginFormAndActionButtonsState extends State<LoginFormAndActionButtons> {
  final formKey = GlobalKey<FormState>();
  late final TextEditingController emailController;
  late final TextEditingController passwordController;
  late final ValueNotifier<bool> isObscureText;
  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    isObscureText = ValueNotifier<bool>(false);
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    isObscureText.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final loginCubit = context.read<LoginCubit>();

    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: emailController,
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'Please enter your email';
              }
              return null;
            },
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          SizedBox(height: 16.h),
          ValueListenableBuilder(
            valueListenable: isObscureText,
            builder: (context, isObscure, child) => CustomTextFormField(
              controller: passwordController,
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return 'Please enter your password';
                }
                return null;
              },
              hintText: 'Password',
              isObscureText: isObscure,
              suffixIcon: IconButton(
                onPressed: () => isObscureText.value = !isObscureText.value,
                icon: Icon(
                  isObscure ? Icons.visibility : Icons.visibility_off,
                  color: AppColors.textGrey,
                ),
              ),
            ),
          ),
          SizedBox(height: 20.h),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: CustomTextButton(
              buttonText: 'Forgot Password?',
              onPressed: () {
                //todo forgot password screen
              },
            ),
          ),
          SizedBox(height: 32.h),
          BlocBuilder<LoginCubit, LoginState>(
            builder: (context, state) {
              return CustomButton(
                isLoading: state is LoginLoading,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    loginCubit.login(
                      LoginRequestBodyEntity(
                        email: emailController.text,
                        password: passwordController.text,
                      ),
                    );
                  }
                },
                buttonText: 'Login',
              );
            },
          ),
        ],
      ),
    );
  }
}
