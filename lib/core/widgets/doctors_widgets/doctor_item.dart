import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/core/widgets/doctors_widgets/custom_doctor_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DoctorItem extends StatelessWidget {
  const DoctorItem({super.key, this.doctor, this.isClickable = true});
  final DoctorEntity? doctor;
  final bool isClickable;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isClickable &&
            doctor != null) {
          context.pushNamed(RouteNames.doctorDetailsName, extra: doctor);
        }
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 8.h),
        child: Row(
          children: [
            CustomDoctorImage(),
            SizedBox(width: 16.w),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    doctor?.name ?? AppConstants.unknownName,
                    overflow: TextOverflow.ellipsis,
                    style: Styles.font16Bold,
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    '${doctor?.degree} | ${doctor?.phone}',
                    overflow: TextOverflow.ellipsis,
                    style: Styles.font12Medium.copyWith(
                      color: AppColors.mediumGrey,
                    ),
                  ),
                  SizedBox(height: 12.h),
                  Text(
                    doctor?.email ?? AppConstants.unknownEmail,
                    style: Styles.font12Medium.copyWith(
                      color: AppColors.mediumGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
