import 'package:doctorak/core/helpers/dummies_data.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctors_list.dart';
import 'package:doctorak/core/widgets/error_and_retry_widget.dart';
import 'package:doctorak/features/home/presentation/controller/home_cubit/home_cubit.dart';
import 'package:doctorak/features/home/presentation/controller/home_cubit/home_state.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/home_screen_widgets/home_specialization_widgets/home_speciality_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeSpecializationsBlocBuilder extends StatelessWidget {
  const HomeSpecializationsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsFailure,
      builder: (context, state) {
        if (state is SpecializationsFailure) {
          return SizedBox(
            height: 100.h,
            child: ErrorAndRetryWidget(
              errorMessage: state.apiErrorModel.getAllErrorMessages(),
              onRetry: () => context.read<HomeCubit>().getSpecializations(),
            ),
          );
        } else if (state is SpecializationsSuccess) {
          return HomeSpecialityList(
            specializations: state.specializationsDataList!,
          );
        } else {
          return Column(
            children: [
              HomeSpecialityList(
                specializations: dummySpecializationsList,
                isShimmer: true,
              ),
              SizedBox(height: 8.h),
              SizedBox(
                height: 200.h,
                child: DoctorsList(
                  doctors: dummyDoctorsList,
                  isShimmer: true,
                ),
              ),
            ],
          );
        }
      },
    );
  }
}
