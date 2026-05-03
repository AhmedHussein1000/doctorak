import 'package:doctorak/core/helpers/dummies_data.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/home_screen_widgets/home_specialization_widgets/home_speciality_item.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeSpecializationsLoadingWidget extends StatelessWidget {
  const HomeSpecializationsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(width: 16.w),
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => Skeletonizer(
          child: HomeSpecialityItem(
            specializationData: dummySpecialization,
            isSelected: false,
          ),
        ),
      ),
    );
  }
}
