import 'package:dio/dio.dart';
import 'package:doctorak/core/network/api_constants.dart';
import 'package:doctorak/core/network/dio_service.dart';
import 'package:doctorak/core/services/notification_service.dart';
import 'package:doctorak/core/services/stripe_service.dart';
import 'package:doctorak/features/appointments/data/repositories/payment_repository_impl.dart';
import 'package:doctorak/features/appointments/domain/repositories/base_payment_repository.dart';
import 'package:doctorak/features/home/data/data_source/home_remote_data_source.dart';
import 'package:doctorak/features/home/domain/repositories/base_home_repository.dart';
import 'package:doctorak/features/home/data/repositories/home_repository_impl.dart';
import 'package:doctorak/features/login/data/data_sources/login_remote_data_source.dart';
import 'package:doctorak/features/login/data/repositories/login_repo_impl.dart';
import 'package:doctorak/features/login/domain/repositories/base_login_repo.dart';
import 'package:doctorak/features/search/data/data_sources/search_remote_data_source.dart';
import 'package:doctorak/features/search/data/repositories/search_repository_impl.dart';
import 'package:doctorak/features/search/domain/repositories/base_search_repository.dart';
import 'package:doctorak/features/signup/data/data_sources/signup_remote_data_source.dart';
import 'package:doctorak/features/signup/data/repository/signup_repo_impl.dart';
import 'package:doctorak/features/signup/domain/repositories/base_signup_repo.dart';
import 'package:doctorak/features/profile/data/data_sources/profile_remote_data_source.dart';
import 'package:doctorak/features/profile/data/repositories/profile_repo_impl.dart';
import 'package:doctorak/features/profile/domain/repositories/base_profile_repo.dart';
import 'package:doctorak/features/cities/data/data_sources/cities_remote_data_source.dart';
import 'package:doctorak/features/cities/data/repositories/cities_repository_impl.dart';
import 'package:doctorak/features/cities/domain/repositories/base_cities_repository.dart';
import 'package:doctorak/features/appointments/data/data_sources/appointments_remote_data_source.dart';
import 'package:doctorak/features/appointments/data/repositories/appointments_repository_impl.dart';
import 'package:doctorak/features/appointments/domain/repositories/base_appointments_repository.dart';
import 'package:get_it/get_it.dart';
import 'package:image_picker/image_picker.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import 'package:doctorak/core/network/network_info.dart';

import 'package:doctorak/features/notifications/presentation/controllers/notifications_cubit/notifications_cubit.dart';

final getIt = GetIt.instance;

class ServiceLocator {
  ServiceLocator._();
  static void setup() {
    // repos
    getIt.registerLazySingleton<BaseSignupRepo>(() => SignupReposImpl(getIt()));
    getIt.registerLazySingleton<BaseLoginRepo>(() => LoginRepoImpl(getIt()));
    getIt.registerLazySingleton<BaseHomeRepository>(
      () => HomeRepositoryImpl(getIt()),
    );
    getIt.registerLazySingleton<BaseSearchRepository>(
      () => SearchRepositoryImpl(getIt()),
    );
    getIt.registerLazySingleton<BaseProfileRepo>(
      () => ProfileRepoImpl(getIt()),
    );
    getIt.registerLazySingleton<BaseCitiesRepository>(
      () => CitiesRepositoryImpl(getIt()),
    );
    getIt.registerLazySingleton<BaseAppointmentsRepository>(
      () => AppointmentsRepositoryImpl(getIt()),
    );
    getIt.registerLazySingleton<BasePaymentRepository>(
      () => PaymentRepositoryImpl(getIt()),
    );
    //data sources
    getIt.registerLazySingleton<BaseSignupRemoteDataSource>(
      () => SignupRemoteDataSource(getIt()),
    );
    getIt.registerLazySingleton<BaseLoginRemoteDataSource>(
      () => LoginRemoteDataSource(getIt()),
    );
    getIt.registerLazySingleton<BaseHomeRemoteDataSource>(
      () => HomeRemoteDataSourceImpl(getIt()),
    );
    getIt.registerLazySingleton<BaseSearchRemoteDataSource>(
      () => SearchRemoteDataSourceImpl(getIt()),
    );
    getIt.registerLazySingleton<BaseProfileRemoteDataSource>(
      () => ProfileRemoteDataSourceImpl(getIt()),
    );
    getIt.registerLazySingleton<BaseCitiesRemoteDataSource>(
      () => CitiesRemoteDataSourceImpl(getIt()),
    );
    getIt.registerLazySingleton<BaseAppointmentsRemoteDataSource>(
      () => AppointmentsRemoteDataSourceImpl(getIt()),
    );
    //services
    getIt.registerLazySingleton(() => InternetConnection());
    getIt.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(getIt()),
    );
    getIt.registerLazySingleton(
      () => DioService(baseUrl: ApiConstants.baseUrl),
    );
    getIt.registerLazySingleton<ImagePicker>(() => ImagePicker());
    getIt.registerLazySingleton<StripeService>(() => StripeService(Dio()));
    getIt.registerLazySingleton<NotificationService>(() => NotificationService());
    // cubits 
    getIt.registerLazySingleton<NotificationsCubit>(() => NotificationsCubit());
  }
}
