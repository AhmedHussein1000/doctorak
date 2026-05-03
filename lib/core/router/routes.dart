import 'package:doctorak/core/di/service_locator.dart';
import 'package:doctorak/core/router/route_names.dart';
import 'package:doctorak/core/router/route_paths.dart';
import 'package:doctorak/core/shared/entities/doctor_entity.dart';
import 'package:doctorak/features/appointments/presentation/controllers/book_appointment_cubit/book_appointment_cubit.dart';
import 'package:doctorak/features/appointments/presentation/controllers/my_appointments_cubit/my_appointments_cubit.dart';
import 'package:doctorak/features/home/domain/entities/specialization_data_entity.dart';
import 'package:doctorak/features/home/presentation/controller/all_doctors_cubit/all_doctors_cubit.dart';
import 'package:doctorak/features/home/presentation/screens/all_doctors_screen.dart';
import 'package:doctorak/features/home/presentation/screens/doctor_details_screen.dart';
import 'package:doctorak/features/home/presentation/screens/doctors_by_speciality_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:doctorak/features/appointments/presentation/screens/appointments_screen.dart';
import 'package:doctorak/features/cities/presentation/screens/cities_screen.dart';
import 'package:doctorak/features/cities/presentation/screens/doctors_by_city_screen.dart';
import 'package:doctorak/features/cities/presentation/controllers/cities_cubit/cities_cubit.dart';
import 'package:doctorak/features/cities/presentation/controllers/doctors_by_city_cubit/doctors_by_city_cubit.dart';
import 'package:doctorak/core/shared/entities/city_entity.dart';
import 'package:doctorak/features/home/presentation/controller/all_specializations_cubit/all_specializations_cubit.dart';
import 'package:doctorak/features/home/presentation/controller/home_cubit/home_cubit.dart';
import 'package:doctorak/features/home/presentation/screens/all_specialities_screen.dart';
import 'package:doctorak/features/home/presentation/screens/home_screen.dart';
import 'package:doctorak/features/login/presentation/controllers/login_cubit/login_cubit.dart';
import 'package:doctorak/features/login/presentation/screens/login_screen.dart';
import 'package:doctorak/features/main_layout/presentation/screens/main_layout_screen.dart';
import 'package:doctorak/features/on_boarding/presentation/screens/on_boarding_screen.dart';
import 'package:doctorak/features/profile/presentation/screens/profile_screen.dart';
import 'package:doctorak/features/profile/presentation/screens/personal_info_screen.dart';
import 'package:doctorak/features/signup/presentation/controllers/signup_cubit/signup_cubit.dart';
import 'package:doctorak/features/signup/presentation/screens/signup_screen.dart';
import 'package:doctorak/features/search/presentation/controllers/search_bloc/search_bloc.dart';
import 'package:doctorak/features/search/presentation/screens/search_screen.dart';
import 'package:doctorak/features/appointments/presentation/screens/book_appointment_screen.dart';
import 'package:doctorak/features/appointments/presentation/screens/booking_confirmed_screen.dart';
import 'package:doctorak/features/notifications/presentation/screens/notifications_screen.dart';

List<RouteBase> get appRoutes {
  return [
    GoRoute(
      path: RoutePaths.onboardingPath,
      name: RouteNames.onboardingName,
      builder: (context, state) => const OnBoardingScreen(),
    ),
    GoRoute(
      path: RoutePaths.loginPath,
      name: RouteNames.loginName,
      builder: (context, state) => BlocProvider(
        create: (context) => LoginCubit(getIt()),
        child: const LoginScreen(),
      ),
    ),
    GoRoute(
      path: RoutePaths.signupPath,
      name: RouteNames.signupName,
      builder: (context, state) => BlocProvider(
        create: (context) => SignupCubit(getIt()),
        child: const SignupScreen(),
      ),
    ),
    GoRoute(
      path: RoutePaths.searchPath,
      name: RouteNames.searchName,
      builder: (context, state) => BlocProvider(
        create: (context) => SearchBloc(getIt()),
        child: const SearchScreen(),
      ),
    ),
    GoRoute(
      path: RoutePaths.doctorDetailsPath,
      name: RouteNames.doctorDetailsName,
      builder: (context, state) {
        final doctor = state.extra as DoctorEntity;
        return DoctorDetailsScreen(doctor: doctor);
      },
    ),
    GoRoute(
      path: RoutePaths.bookAppointmentPath,
      name: RouteNames.bookAppointmentName,
      builder: (context, state) {
        final doctor = state.extra as DoctorEntity;
        return BlocProvider(
          create: (context) => BookAppointmentCubit(getIt(), getIt(), getIt(), getIt()),
          child: BookAppointmentScreen(doctor: doctor),
        );
      },
    ),
    GoRoute(
      path: RoutePaths.bookingConfirmedPath,
      name: RouteNames.bookingConfirmedName,
      builder: (context, state) => const BookingConfirmedScreen(),
    ),
    GoRoute(
      path: RoutePaths.notificationsPath,
      name: RouteNames.notificationsName,
      builder: (context, state) => const NotificationsScreen(),
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) =>
          MainLayoutScreen(navigationShell: navigationShell),
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.homePath,
              name: RouteNames.homeName,
              builder: (context, state) => BlocProvider(
                create: (context) => HomeCubit(getIt())..getSpecializations(),
                child: const HomeScreen(),
              ),
              routes: [
                GoRoute(
                  path: RoutePaths.allSpecialitiesPath,
                  name: RouteNames.allSpecialitiesName,
                  routes: [
                    GoRoute(
                      path: RoutePaths.doctorsBySpecialityPath,
                      name: RouteNames.doctorsBySpecialityName,
                      builder: (context, state) {
                        final specializationData =
                            state.extra as SpecializationDataEntity;
                        return DoctorsBySpecialityScreen(
                          specializationData: specializationData,
                        );
                      },
                    ),
                  ],
                  builder: (context, state) => BlocProvider(
                    create: (context) =>
                        AllSpecializationsCubit(getIt())
                          ..getAllSpecializations(),
                    child: const AllSpecialitiesScreen(),
                  ),
                ),
                GoRoute(
                  path: RoutePaths.allDoctorsPath,
                  name: RouteNames.allDoctorsName,
                  builder: (context, state) => BlocProvider(
                    create: (context) =>
                        AllDoctorsCubit(getIt())..getAllDoctors(),
                    child: const AllDoctorsScreen(),
                  ),
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.citiesPath,
              name: RouteNames.citiesName,
              builder: (context, state) => BlocProvider(
                create: (context) => CitiesCubit(getIt())..getAllCities(),
                child: const CitiesScreen(),
              ),
              routes: [
                GoRoute(
                  path: RoutePaths.doctorsByCityPath,
                  name: RouteNames.doctorsByCityName,
                  builder: (context, state) {
                    final city = state.extra as CityEntity;
                    return BlocProvider(
                      create: (context) =>
                          DoctorsByCityCubit(getIt())
                            ..getDoctorsByCity(city.id!),
                      child: DoctorsByCityScreen(city: city),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.appointmentsPath,
              name: RouteNames.appointmentsName,
              builder: (context, state) => BlocProvider(
                create: (_) => MyAppointmentsCubit(getIt())..getMyAppointments(),
                child: const AppointmentsScreen(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: RoutePaths.profilePath,
              name: RouteNames.profileName,
              builder: (context, state) => const ProfileScreen(),
              routes: [
                GoRoute(
                  path: RoutePaths.personalInfoPath,
                  name: RouteNames.personalInfoName,
                  builder: (context, state) => const PersonalInfoScreen(),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
  ];
}
