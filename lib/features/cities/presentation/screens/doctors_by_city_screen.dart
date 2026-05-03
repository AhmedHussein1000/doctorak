import 'package:doctorak/core/helpers/dummies_data.dart';
import 'package:doctorak/core/helpers/extensions.dart';
import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctors_list.dart';
import 'package:doctorak/core/widgets/error_and_retry_widget.dart';
import 'package:doctorak/features/cities/presentation/controllers/doctors_by_city_cubit/doctors_by_city_cubit.dart';
import 'package:doctorak/features/cities/presentation/controllers/doctors_by_city_cubit/doctors_by_city_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsByCityScreen extends StatelessWidget {
  const DoctorsByCityScreen({super.key, required this.city});

  final CityEntity city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Doctors in ${city.name}'),
      body: BlocBuilder<DoctorsByCityCubit, DoctorsByCityState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => Padding(
              padding: EdgeInsets.symmetric(vertical: 16.h),
              child: DoctorsList(doctors: dummyDoctorsList, isShimmer: true),
            ),
            success: (doctors) {
              if (doctors.isNullOrEmpty()) {
                return const Center(child: Text('No doctors found'));
              }
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 16.h),
                child: DoctorsList(doctors: doctors),
              );
            },
            failure: (apiErrorModel) => ErrorAndRetryWidget(
              errorMessage: apiErrorModel.getAllErrorMessages(),
              onRetry: () =>
                  context.read<DoctorsByCityCubit>().getDoctorsByCity(city.id!),
            ),
          );
        },
      ),
    );
  }
}
