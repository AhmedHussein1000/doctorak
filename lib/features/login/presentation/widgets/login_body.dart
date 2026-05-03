import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/features/login/presentation/widgets/dont_have_an_account.dart';
import 'package:doctorak/features/login/presentation/widgets/login_form.dart';
import 'package:doctorak/features/login/presentation/widgets/terms_and_privacy_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginBody extends StatelessWidget {
  const LoginBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back!',
                style: Styles.font24Bold.copyWith(color: AppColors.primaryBlue),
              ),
              SizedBox(height: 10.h),
              Text(
                "We're excited to have you back, can't wait to see what you've been up to since you last logged in.",
                style: Styles.font14Regular.copyWith(
                  color: AppColors.mediumGrey,
                ),
              ),
              SizedBox(height: 30.h),
              const LoginFormAndActionButtons(),
              SizedBox(height: 50.h),
              Column(
                children: [
                  const TermsAndPrivacyText(),
                  SizedBox(height: 24.h),
                  const DontHaveAnAccount(),
                ],
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
