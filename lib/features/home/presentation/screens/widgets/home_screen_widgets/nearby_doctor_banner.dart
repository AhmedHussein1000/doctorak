import 'package:doctorak/core/helpers/assets.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyDoctorBanner extends StatelessWidget {
  const NearbyDoctorBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: SizedBox(
        height: 197.h,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
              width: double.infinity,
              height: 167.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24.r),
                image: DecorationImage(
                  image: AssetImage(Assets.imagesBlueBackgroundContainer),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FittedBox(
                    child: Text(
                      'Book and\nschedule with\nnearest doctor',
                      style: Styles.font18Medium.copyWith(color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  FindNearbyButton(),
                ],
              ),
            ),
            Positioned(
              top: 0,
              right: 8.w,
              child: Image.asset(Assets.imagesDoctor, height: 197.h),
            ),
          ],
        ),
      ),
    );
  }
}

class FindNearbyButton extends StatelessWidget {
  const FindNearbyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(48)),
      ),
      onPressed: () {
        //TODO
      },
      child: Text(
        'Find Nearby',
        style: Styles.font12Regular.copyWith(color: AppColors.primaryBlue),
      ),
    );
  }
}
