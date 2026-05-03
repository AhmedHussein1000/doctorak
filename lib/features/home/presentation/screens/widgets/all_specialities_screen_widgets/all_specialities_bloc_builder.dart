import 'package:doctorak/core/helpers/dummies_data.dart';
import 'package:doctorak/core/helpers/extensions.dart';
import 'package:doctorak/core/widgets/error_and_retry_widget.dart';
import 'package:doctorak/features/home/presentation/controller/all_specializations_cubit/all_specializations_cubit.dart';
import 'package:doctorak/features/home/presentation/controller/all_specializations_cubit/all_specializations_state.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/all_specialities_screen_widgets/all_specialities_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AllSpecialitiesBlocBuilder extends StatelessWidget {
  const AllSpecialitiesBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AllSpecializationsCubit, AllSpecializationsState>(
      builder: (context, state) {
        return state.maybeWhen(
          success: (specializationsList) {
            if (specializationsList.isNullOrEmpty()) {
              return ErrorAndRetryWidget(
                errorMessage: 'No specializations found',
                onRetry: () => context
                    .read<AllSpecializationsCubit>()
                    .getAllSpecializations(),
              );
            }
            return AllSpecialitiesList(
              specializationsList: specializationsList,
            );
          },
          failure: (apiErrorModel) => ErrorAndRetryWidget(
            errorMessage: apiErrorModel.message,
            onRetry: () =>
                context.read<AllSpecializationsCubit>().getAllSpecializations(),
          ),
          orElse: () => AllSpecialitiesList(
            specializationsList: dummySpecializationsList,
            isShimmer: true,
          ),
        );
      },
    );
  }
}
