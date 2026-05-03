import 'package:doctorak/core/helpers/dummies_data.dart';
import 'package:doctorak/core/helpers/assets.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctors_list.dart';
import 'package:doctorak/core/widgets/error_and_retry_widget.dart';
import 'package:doctorak/features/search/presentation/controllers/search_bloc/search_bloc.dart';
import 'package:doctorak/features/search/presentation/controllers/search_bloc/search_event.dart';
import 'package:doctorak/features/search/presentation/controllers/search_bloc/search_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchScreenBody extends StatefulWidget {
  const SearchScreenBody({super.key});

  @override
  State<SearchScreenBody> createState() => _SearchScreenBodyState();
}

class _SearchScreenBodyState extends State<SearchScreenBody> {
  late final TextEditingController _searchController;

  @override
  void initState() {
    _searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 16.h),
          child: _buildSearchTextField(),
        ),
        Expanded(child: _buildSearchResults()),
      ],
    );
  }

  Widget _buildSearchTextField() {
    return TextField(
      controller: _searchController,
      onChanged: (query) {
        context.read<SearchBloc>().add(QueryChanged(query));
      },
      style: Styles.font14Medium.copyWith(color: AppColors.darkGrey),
      cursorColor: AppColors.primaryBlue,
      decoration: InputDecoration(
        hintText: 'Search',
        hintStyle: Styles.font12Medium.copyWith(
          color: AppColors.lightGrey,
          height: 1.5,
        ),
        prefixIcon: Image.asset(Assets.imagesMagnifyingIcon),
        filled: true,
        fillColor: AppColors.veryLightGrey,
        contentPadding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 14.h),
        border: _sharedOutlineBorder(),
        enabledBorder: _sharedOutlineBorder(),
        focusedBorder: _sharedOutlineBorder(),
      ),
    );
  }

  OutlineInputBorder _sharedOutlineBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.r),
      borderSide: BorderSide.none,
    );
  }

  Widget _buildSearchResults() {
    return BlocBuilder<SearchBloc, SearchState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => DoctorsList(
            doctors: dummyDoctorsList,
            isShimmer: true,
            separatorHeight: 12,
          ),
          success: (doctors) => doctors.isEmpty
              ? const Center(child: Text('No Doctors Found'))
              : DoctorsList(doctors: doctors),

          error: (apiErrorModel) => ErrorAndRetryWidget(
            errorMessage: apiErrorModel.message,
            onRetry: () {
              final query = _searchController.text.trim();
              if (query.isNotEmpty) {
                context.read<SearchBloc>().add(QueryChanged(query));
              }
            },
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }
}
