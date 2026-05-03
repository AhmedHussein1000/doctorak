import 'package:doctorak/core/helpers/dummies_data.dart';
import 'package:doctorak/core/helpers/extensions.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctors_list.dart';
import 'package:doctorak/core/widgets/error_and_retry_widget.dart';
import 'package:doctorak/features/home/presentation/controller/all_doctors_cubit/all_doctors_cubit.dart';
import 'package:doctorak/features/home/presentation/controller/all_doctors_cubit/all_doctors_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllDoctorsBlocBuilder extends StatelessWidget {
  const AllDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllDoctorsCubit, AllDoctorsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (allDoctors) {
            if (allDoctors.isNullOrEmpty()) {
              return ErrorAndRetryWidget(
                errorMessage: 'No Doctors Found',
                onRetry: () =>
                    context.read<AllDoctorsCubit>().getAllDoctors(),
              );
            }
            return DoctorsList(doctors: allDoctors);
          },
          failure: (apiErrorModel) =>
              ErrorAndRetryWidget(errorMessage: apiErrorModel.message),
          orElse: () => DoctorsList(
            doctors: dummyDoctorsList,
            isShimmer: true,
            separatorHeight: 12,
          ),
        );
      },
    );
  }
}
