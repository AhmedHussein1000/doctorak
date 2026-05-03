import 'package:doctorak/core/functions/get_specialization_image.dart';
import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class SpecialityItem extends StatelessWidget {
  const SpecialityItem({super.key, required this.specializationData});

  final SpecializationDataEntity specializationData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.goNamed(
          RouteNames.doctorsBySpecialityName,
          extra: specializationData,
        );
      },
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25.w, vertical: 25.h),
            width: 80.w,
            height: 80.h,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Color(0x0C247CFF),
            ),
            child: Image.asset(getSpecializationImage(specializationData.name)),
          ),
          SizedBox(height: 12.h),
          FittedBox(
            child: Text(
              specializationData.name ?? 'Unknown',
              style: Styles.font14Regular,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
