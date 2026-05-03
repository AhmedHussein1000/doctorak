import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/core/widgets/custom_circle_progress_indicator.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorInfoHeader extends StatelessWidget {
  final DoctorEntity doctor;

  const DoctorInfoHeader({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.r),
          child: CachedNetworkImage(
            width: 74.w,
            height: 74.h,
            imageUrl: doctor.photo ?? '',
            fit: BoxFit.cover,
            placeholder: (context, url) =>
                const CustomCircleProgressIndicator(),
            errorWidget: (context, url, error) => Container(
              width: 74.w,
              height: 74.h,
              decoration: BoxDecoration(
                color: AppColors.lighterGrey,
                borderRadius: BorderRadius.circular(12.r),
              ),
              child: Icon(
                Icons.person,
                size: 36.sp,
                color: AppColors.mediumGrey,
              ),
            ),
          ),
        ),
        SizedBox(width: 12.w),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                doctor.name ?? AppConstants.unknownName,
                style: Styles.font16Bold.copyWith(
                  color: AppColors.darkGrey,
                  height: 1.2,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(height: 8.h),
              _buildSubtitleRow(),
              SizedBox(height: 12.h),
              _buildRatingRow(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildSubtitleRow() {
    final specialization = doctor.specialization?.name ?? '';
    final hospital = doctor.address ?? '';
    final parts = <String>[
      if (specialization.isNotEmpty) specialization,
      if (hospital.isNotEmpty) hospital,
    ];

    return Text(
      parts.join('  |  '),
      style: Styles.font12Medium.copyWith(
        color: AppColors.textDarkGrey,
        letterSpacing: 0.2,
      ),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }

  Widget _buildRatingRow() {
    return Row(
      children: [
        Icon(Icons.star, size: 16.sp, color: AppColors.warningYellow),
        SizedBox(width: 4.w),
        Text(
          '4.8',
          style: Styles.font12Medium.copyWith(
            color: AppColors.textDarkGrey,
            letterSpacing: 0.2,
          ),
        ),
        SizedBox(width: 4.w),
        Text(
          '(4,279 reviews)',
          style: Styles.font12Medium.copyWith(
            color: AppColors.textDarkGrey,
            letterSpacing: 0.2,
          ),
        ),
      ],
    );
  }
}
