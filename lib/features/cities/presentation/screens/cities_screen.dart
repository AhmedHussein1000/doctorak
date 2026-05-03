import 'package:doctorak/core/helpers/dummies_data.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/core/widgets/error_and_retry_widget.dart';
import 'package:doctorak/features/cities/presentation/controllers/cities_cubit/cities_cubit.dart';
import 'package:doctorak/features/cities/presentation/controllers/cities_cubit/cities_state.dart';
import 'package:doctorak/features/cities/presentation/widgets/cities_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class CitiesScreen extends StatelessWidget {
  const CitiesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Cities', showBackButton: false),
      body: BlocBuilder<CitiesCubit, CitiesState>(
        builder: (context, state) {
          return state.when(
            initial: () => const SizedBox.shrink(),
            loading: () => const CitiesList(groupedCities:dummyGroupedCities ,isShimmer: true,),
            failure: (apiErrorModel) => ErrorAndRetryWidget(
              errorMessage: apiErrorModel.getAllErrorMessages(),
              onRetry: () => context.read<CitiesCubit>().getAllCities(),
            ),
            success: (groupedCities) =>
                CitiesList(groupedCities: groupedCities),
          );
        },
      ),
    );
  }
}



