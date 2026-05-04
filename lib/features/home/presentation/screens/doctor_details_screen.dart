import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/utils/app_constants.dart';
import 'package:doctorak/core/widgets/custom_appbar.dart';
import 'package:doctorak/core/widgets/custom_button.dart';
import 'package:doctorak/core/widgets/doctors_widgets/doctor_item.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/home/presentation/screens/widgets/doctor_details/doctor_about_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class DoctorDetailsScreen extends StatelessWidget {
  final DoctorEntity doctor;

  const DoctorDetailsScreen({super.key, required this.doctor});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: doctor.name ?? AppConstants.unknownName,
        onActionPressed: () {},
        showActionButton: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 32.h),
                    DoctorItem(doctor: doctor,isClickable: false,),
                    SizedBox(height: 24.h),
                    DoctorAboutContent(doctor: doctor),
                  ],
                ),
              ),
            ),
            CustomButton(
              onPressed: () {
                context.pushNamed(RouteNames.bookAppointmentName, extra: doctor);
              },
              buttonText: 'Make An Appointment',
            ),
            SizedBox(height: kBottomNavigationBarHeight + 16.h),
          ],
        ),
      ),
    );
  }
}
