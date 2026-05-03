import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/features/login/presentation/widgets/terms_and_privacy_text.dart';
import 'package:doctorak/features/signup/presentation/widgets/already_have_an_account.dart';
import 'package:doctorak/features/signup/presentation/widgets/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 30.h),
              Text(
                'Create Account',
                style: Styles.font24Bold.copyWith(color: AppColors.primaryBlue),
              ),
              Padding(
                padding: EdgeInsets.only(top: 8.h, bottom: 17.h),
                child: Text(
                  "Sign up now and start exploring all that our app has to offer. We're excited to welcome you to our community!",
                  style: Styles.font14Regular.copyWith(
                    color: AppColors.mediumGrey,
                  ),
                ),
              ),
              const SignupForm(),
              Column(
                children: [
                  const TermsAndPrivacyText(),
                  Padding(
                    padding: EdgeInsets.only(top: 24.h),
                    child: const AlreadyHaveAnAccount(),
                  ),
                ],
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
