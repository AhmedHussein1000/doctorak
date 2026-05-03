import 'package:flutter_dotenv/flutter_dotenv.dart';

class PaymentKeys {
  //Stripe
  static String get stripePublishableKey => dotenv.env['STRIPE_PUBLISHABLE_KEY'] ?? '';
  static String get stripeSecretKey => dotenv.env['STRIPE_SECRET_KEY'] ?? '';
  //PayPal
  static String get paypalClientId => dotenv.env['PAYPAL_CLIENT_ID'] ?? '';
  static String get paypalSecretkey => dotenv.env['PAYPAL_SECRET_KEY'] ?? '';

  //Paymob
  static String get paymobApiKey => dotenv.env['PAYMOB_API_KEY'] ?? '';
  static String get paymobSecretKey => dotenv.env['PAYMOB_SECRET_KEY'] ?? '';
  static int get paymobKioskIntegrationId => int.tryParse(dotenv.env['PAYMOB_KIOSK_INTEGRATION_ID'] ?? '') ?? 0;
  static int get paymobWalletIntegrationId => int.tryParse(dotenv.env['PAYMOB_WALLET_INTEGRATION_ID'] ?? '') ?? 0;
  static int get paymobCardIntegrationId => int.tryParse(dotenv.env['PAYMOB_CARD_INTEGRATION_ID'] ?? '') ?? 0;
  static int get paymobIFrameId => int.tryParse(dotenv.env['PAYMOB_IFRAME_ID'] ?? '') ?? 0;
}

//paypal
//[personal email ahmed-paypal1@personal.example.com

//stripe
//success 4242424242424242
//failure 4000000000009995

//paymob 
//wallet 01010101010  pin and password 123456
//card 5123456789012346