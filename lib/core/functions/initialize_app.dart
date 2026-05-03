import 'package:doctorak/core/caches/cache_keys.dart';
import 'package:doctorak/core/caches/flutter_secure_storage_manager.dart';
import 'package:doctorak/core/config/payment_keys.dart';
import 'package:doctorak/core/di/service_locator.dart';
import 'package:doctorak/core/caches/shared_prefs_manager.dart';
import 'package:doctorak/core/services/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paymob/flutter_paymob.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

Future<void> initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
      (await getTemporaryDirectory()).path,
    ),
  );
  await SharedPrefsManager.init();
  userToken = await FlutterSecureStorageManager.read(CacheKeys.token);
  Stripe.publishableKey = PaymentKeys.stripePublishableKey;
  await FlutterPaymob.instance.initialize(
    apiKey: PaymentKeys.paymobApiKey,
    integrationID: PaymentKeys.paymobCardIntegrationId,
    walletIntegrationId: PaymentKeys.paymobWalletIntegrationId,
    iFrameID: PaymentKeys.paymobIFrameId,
    
  );
  ServiceLocator.setup();
  await getIt<NotificationService>().init();
  isSkippedOnBoarding =
      SharedPrefsManager.getBool(CacheKeys.onBoarding) ?? false;
}

