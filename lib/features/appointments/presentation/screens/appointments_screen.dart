import 'package:doctorak/core/enums/appointment_card_type.dart';
import 'package:doctorak/core/themes/app_colors.dart';
import 'package:doctorak/core/themes/app_styles.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/features/appointments/presentation/controllers/my_appointments_cubit/my_appointments_cubit.dart';
import 'package:doctorak/features/appointments/presentation/controllers/my_appointments_cubit/my_appointments_state.dart';
import 'package:doctorak/features/appointments/presentation/widgets/my_appointments_widgets/appointment_card_shimmer.dart';
import 'package:doctorak/features/appointments/presentation/widgets/my_appointments_widgets/appointments_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppointmentsScreen extends StatelessWidget {
  const AppointmentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: CustomAppBar(title: 'My Appointments', showBackButton: false),
        body: Column(
          children: [
            _buildTabBar(),
            Expanded(child: _buildTabContent()),
          ],
        ),
      ),
    );
  }

  Widget _buildTabBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: TabBar(
        labelColor: AppColors.primaryBlue,
        unselectedLabelColor: AppColors.mediumGrey,
        labelStyle: Styles.font14SemiBold,
        unselectedLabelStyle: Styles.font14Regular,
        indicatorColor: AppColors.primaryBlue,
        indicatorWeight: 2.5,
        dividerColor: AppColors.lighterGrey,
        tabs: AppointmentCardType.values.map((e) => Tab(text: e.name)).toList(),
      ),
    );
  }

  Widget _buildTabContent() {
    return BlocBuilder<MyAppointmentsCubit, MyAppointmentsState>(
      builder: (context, state) {
        return state.when(
          initial: () => const SizedBox.shrink(),
          loading: () => const AppointmentCardShimmer(),
          success: (appointments) {
            final upcoming = appointments
                .where(
                  (a) =>
                      a.status?.toLowerCase() ==
                      AppointmentCardType.pending.name.toLowerCase(),
                )
                .toList();
            final completed = appointments
                .where(
                  (a) =>
                      a.status?.toLowerCase() ==
                      AppointmentCardType.completed.name.toLowerCase(),
                )
                .toList();
            final cancelled = appointments
                .where(
                  (a) =>
                      a.status?.toLowerCase() ==
                      AppointmentCardType.cancelled.name.toLowerCase(),
                )
                .toList();

            return TabBarView(
              children: [
                AppointmentsListView(
                  appointments: upcoming,
                  cardType: AppointmentCardType.pending,
                ),
                AppointmentsListView(
                  appointments: completed,
                  cardType: AppointmentCardType.completed,
                ),
                AppointmentsListView(
                  appointments: cancelled,
                  cardType: AppointmentCardType.cancelled,
                ),
              ],
            );
          },
          failure: (error) => _buildErrorState(context, error.message),
        );
      },
    );
  }

  Widget _buildErrorState(BuildContext context, String? message) {
    return TabBarView(
      children: List.generate(
        3,
        (_) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.error_outline,
                size: 48.sp,
                color: AppColors.secondaryFillRed,
              ),
              SizedBox(height: 16.h),
              Text(
                message ?? 'Failed to load appointments',
                style: Styles.font14Regular.copyWith(
                  color: AppColors.mediumGrey,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 16.h),
              TextButton.icon(
                onPressed: () =>
                    context.read<MyAppointmentsCubit>().getMyAppointments(),
                icon: const Icon(Icons.refresh),
                label: const Text('Retry'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
