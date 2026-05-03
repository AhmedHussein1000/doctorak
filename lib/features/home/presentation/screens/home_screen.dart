import 'package:doctorak/core/router/route_paths.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/home_screen_widgets/custom_see_all_header.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/doctors_by_speciality_bloc_builder.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/home_screen_widgets/home_appbar.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/home_screen_widgets/nearby_doctor_banner.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/home_screen_widgets/home_specialization_widgets/home_specializations_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(height: 12.h),
                  const HomeAppBar(),
                  const NearbyDoctorBanner(),
                  SizedBox(height: 24.h),
                  CustomSeeAllHeader(
                    title: 'Doctor Speciality',
                    onSeeAllPressed: () => context.go(
                      '${RoutePaths.homePath}/${RoutePaths.allSpecialitiesPath}',
                    ),
                  ),
                  SizedBox(height: 16.h),
                  const HomeSpecializationsBlocBuilder(),
                  SizedBox(height: 24.h),
                  CustomSeeAllHeader(
                    title: 'Recommendation Doctors',
                    onSeeAllPressed: () => context.go(
                      '${RoutePaths.homePath}/${RoutePaths.allDoctorsPath}',
                    ),
                  ),
                  SizedBox(height: 16.h),
                ],
              ),
            ),
            const DoctorsBySpecialityBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
