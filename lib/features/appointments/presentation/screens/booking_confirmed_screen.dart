import 'package:doctorak/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';

class BookingConfirmedScreen extends StatelessWidget {
  const BookingConfirmedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Details',
        showBackButton: true,
        onBackPressed: () => context.goNamed(RouteNames.homeName),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Spacer(),
              Container(
                width: 80.w,
                height: 80.w,
                decoration: BoxDecoration(
                  color: AppColors.successGreen,
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 40.sp),
              ),
              SizedBox(height: 24.h),
              Text(
                'Booking Confirmed',
                style: Styles.font20SemiBold.copyWith(
                  color: AppColors.darkGrey,
                ),
              ),
              SizedBox(height: 16.h),
              Text(
                'Your appointment has been successfully booked.\nYou can view it in your appointments tab.',
                textAlign: TextAlign.center,
                style: Styles.font14Regular.copyWith(
                  color: AppColors.textGrey,
                  height: 1.5,
                ),
              ),
              Spacer(),
              CustomButton(
                onPressed: () => context.goNamed(RouteNames.appointmentsName),
                buttonText: 'Done',
              ),
              SizedBox(height: 24.h),
            ],
          ),
        ),
      ),
    );
  }
}
