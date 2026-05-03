import 'package:doctorak/features/home/presentation/controller/home_cubit/home_cubit.dart';
import 'package:doctorak/features/home/presentation/controller/home_cubit/home_state.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctors_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DoctorsBySpecialityBlocBuilder extends StatelessWidget {
  const DoctorsBySpecialityBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is DoctorsSuccess || current is DoctorsFailure,
      builder: (context, state) {
        if (state is DoctorsSuccess) {
          if (state.doctors!.isEmpty) {
            return SliverToBoxAdapter(
              child: Center(
                child: Text('No doctors found'),
              ),
            );
          }
          return DoctorsList(
            doctors: state.doctors!,
            isSliver: true,
          );
        } else if (state is DoctorsFailure) {
          return SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.all(16.w),
              child: Text(state.apiErrorModel.getAllErrorMessages()),
            ),
          );
        }
        return SliverToBoxAdapter(child: SizedBox.shrink());
      },
    );
  }
}
