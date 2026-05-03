import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctor_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class DoctorsList extends StatelessWidget {
  const DoctorsList({
    super.key,
    required this.doctors,
    this.separatorHeight = 16,
    this.isShimmer = false,
    this.isSliver = false,
  });
  final List<DoctorEntity?>? doctors;
  final double separatorHeight;
  final bool isShimmer;
  final bool isSliver;
  @override
  Widget build(BuildContext context) {
    return  isSliver ? SliverList.separated(
      separatorBuilder: (context, index) =>
              SizedBox(height: separatorHeight),
          itemCount: doctors?.length ?? 0,
          itemBuilder: (context, index) => DoctorItem(doctor: doctors?[index]),
    )  : Skeletonizer(
      enabled: isShimmer,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: ListView.separated(
          separatorBuilder: (context, index) =>
              SizedBox(height: separatorHeight),
          itemCount: doctors?.length ?? 0,
          itemBuilder: (context, index) => DoctorItem(doctor: doctors?[index]),
        ),
      ),
    );
  }
}
