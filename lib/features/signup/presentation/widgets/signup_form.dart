import 'package:doctorak/core/helpers/app_regex.dart';
import 'package:doctorak/core/helpers/extensions.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/widgets/custom_button.dart';
import 'package:doctorak/core/widgets/custom_text_form_field.dart';
import 'package:doctorak/features/signup/domain/entities/signup_request_body_entity.dart';
import 'package:doctorak/features/signup/presentation/controllers/signup_cubit/signup_cubit.dart';
import 'package:doctorak/features/signup/presentation/controllers/signup_cubit/signup_state.dart';
import 'package:doctorak/features/signup/presentation/widgets/password_validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({super.key});
  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final formKey = GlobalKey<FormState>();
  late final TextEditingController userNameController;
  late final TextEditingController emailController;
  late final TextEditingController phoneController;
  late final TextEditingController passwordController;
  late final TextEditingController passwordConfirmationController;
  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasNumber = false;
  bool hasSpecialChar = false;
  bool hasMinLength = false;
  final ValueNotifier<bool> _isPasswordObscure = ValueNotifier<bool>(true);
  final ValueNotifier<bool> _isPasswordConfirmationObscure =
      ValueNotifier<bool>(true);

  @override
  void initState() {
    userNameController = TextEditingController();
    emailController = TextEditingController();
    phoneController = TextEditingController();
    passwordController = TextEditingController();
    passwordConfirmationController = TextEditingController();
    setupPasswordControllerListener();
    super.initState();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasSpecialChar = AppRegex.hasSpecialCharacter(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final signupCubit = context.read<SignupCubit>();
    return Form(
      key: formKey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: userNameController,
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'Please enter your username';
              }
              return null;
            },
            hintText: 'username',
            keyboardType: TextInputType.name,
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.h),
            child: CustomTextFormField(
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              controller: phoneController,
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return 'Please enter your phone number';
                } else if (!AppRegex.isPhoneNumberValid(value!)) {
                  return 'Please enter a valid Egyptian phone number';
                }
                return null;
              },
              hintText: 'phone number',
              keyboardType: TextInputType.phone,
            ),
          ),
          CustomTextFormField(
            controller: emailController,
            validator: (value) {
              if (value.isNullOrEmpty()) {
                return 'Please enter your email';
              } else if (!AppRegex.isEmailValid(value!)) {
                return 'Please enter a valid email';
              }
              return null;
            },
            hintText: 'Email',
            keyboardType: TextInputType.emailAddress,
          ),
          ValueListenableBuilder(
            valueListenable: _isPasswordObscure,
            builder: (context, isPasswordObscure, child) => Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: CustomTextFormField(
                controller: passwordController,
                validator: (value) {
                  if (value.isNullOrEmpty()) {
                    return 'Please enter your password';
                  } else if (!AppRegex.isPasswordValid(value!)) {
                    return 'Please match password requirements.';
                  }
                  return null;
                },
                hintText: 'Password',
                isObscureText: isPasswordObscure,
                suffixIcon: IconButton(
                  onPressed: () =>
                      _isPasswordObscure.value = !_isPasswordObscure.value,
                  icon: Icon(
                    _isPasswordObscure.value
                        ? Icons.visibility
                        : Icons.visibility_off,
                    color: AppColors.textGrey,
                  ),
                ),
              ),
            ),
          ),
          ValueListenableBuilder(
            valueListenable: _isPasswordConfirmationObscure,
            builder: (context, isPasswordConfirmationObscure, child) =>
                CustomTextFormField(
                  controller: passwordConfirmationController,
                  validator: (value) {
                    if (value.isNullOrEmpty()) {
                      return 'Please confirm your password';
                    } else if (value != passwordController.text) {
                      return 'Passwords do not match';
                    }
                    return null;
                  },
                  hintText: 'Password Confirmation',
                  isObscureText: isPasswordConfirmationObscure,
                  suffixIcon: IconButton(
                    onPressed: () => _isPasswordConfirmationObscure.value =
                        !_isPasswordConfirmationObscure.value,
                    icon: Icon(
                      _isPasswordConfirmationObscure.value
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: AppColors.textGrey,
                    ),
                  ),
                ),
          ),
          SizedBox(height: 24.h),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasNumber: hasNumber,
            hasSpecialChar: hasSpecialChar,
            hasMinLength: hasMinLength,
          ),
          Padding(
            padding: EdgeInsets.only(top: 40.h, bottom: 16.h),
            child: BlocBuilder<SignupCubit, SignupState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is SignupLoading,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      await signupCubit.signup(
                        SignupRequestBodyEntity(
                          userName: userNameController.text,
                          phone: phoneController.text,
                          email: emailController.text,
                          password: passwordController.text,
                          passwordConfirmation:
                              passwordConfirmationController.text,
                          gender: 1,
                        ),
                      );
                    }
                  },
                  buttonText: 'Create Account',
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
