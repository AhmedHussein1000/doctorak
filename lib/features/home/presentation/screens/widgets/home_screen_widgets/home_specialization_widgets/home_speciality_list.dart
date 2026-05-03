import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:doctorak/features/home/presentation/controller/home_cubit/home_cubit.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/home_screen_widgets/home_specialization_widgets/home_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:skeletonizer/skeletonizer.dart';

class HomeSpecialityList extends StatefulWidget {
  const HomeSpecialityList({
    super.key,
    required this.specializations,
    this.isShimmer = false,
  });
  final List<SpecializationDataEntity?> specializations;
  final bool isShimmer;
  @override
  State<HomeSpecialityList> createState() => _HomeSpecialityListState();
}

class _HomeSpecialityListState extends State<HomeSpecialityList> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer(
      enabled: widget.isShimmer,
      child: SizedBox(
        height: 100.h,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 16.w),
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          itemCount: widget.specializations.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              setState(() => currentIndex = index);
              context.read<HomeCubit>().getDoctorsBySpecialization(
                specializationId: widget.specializations[index]?.id,
              );
            },
            child: HomeSpecialityItem(
              specializationData: widget.specializations[index],
              isSelected: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
