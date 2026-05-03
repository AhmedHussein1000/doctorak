import 'package:doctorak/core/caches/shared_prefs_manager.dart';
import 'package:doctorak/core/caches/cache_keys.dart';
import 'package:doctorak/core/router/route_paths.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/widgets/custom_button.dart';
import 'package:doctorak/features/on_boarding/presentation/widgets/on_boarding_image.dart';
import 'package:doctorak/features/on_boarding/presentation/widgets/on_boarding_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 20.h),
              const OnBoardingHeader(),
              SizedBox(height: 40.h),
              const OnBoardingImageAndText(),
              SizedBox(height: 18.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w),
                child: Text(
                  'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                  style: Styles.font13Regular.copyWith(
                    color: AppColors.mediumGrey,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30.h),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w),
                child: CustomButton(
                  onPressed: () {
                    SharedPrefsManager.saveData(
                      key: CacheKeys.onBoarding,
                      value: true,
                    );
                    context.go(RoutePaths.loginPath);
                  },
                  buttonText: 'Get Started',
                ),
              ),
              SizedBox(height: 30.h),
            ],
          ),
        ),
      ),
    );
  }
}
