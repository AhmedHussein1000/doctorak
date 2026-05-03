import 'package:doctorak/core/config/payment_config.dart';
import 'package:doctorak/core/config/payment_keys.dart';
import 'package:doctorak/core/shared/models/payments_models/stripe_payment_models/init_payment_sheet_input_model.dart';
import 'package:doctorak/core/shared/models/payments_models/stripe_payment_models/payment_intent_input_model.dart';
import 'package:doctorak/core/shared/models/payments_models/stripe_payment_models/payment_intent_model/payment_intent_model.dart';
import 'package:doctorak/core/services/payment_data.dart';
import 'package:dio/dio.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeService {
  final Dio _dio;
  const StripeService(this._dio);

  Future<PaymentIntentModel> _createPaymentIntent(
    PaymentIntentInputModel input,
  ) async {
    final response = await _dio.post(
      '${PaymentConfig.stripeBaseUrl}${PaymentConfig.stripePaymentIntentEndPoint}',
      data: input.toJson(),
      options: Options(
        contentType: Headers.formUrlEncodedContentType,
        headers: {'Authorization': 'Bearer ${PaymentKeys.stripeSecretKey}'},
      ),
    );

    return PaymentIntentModel.fromJson(response.data);
  }

  Future<void> _initPaymentSheet(InitPaymentSheetInputModel input) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: input.clientSecret,
        merchantDisplayName: PaymentConfig.merchantName,
        allowsDelayedPaymentMethods: true,
      ),
    );
  }

  Future<void> _displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future<void> processPayment(PaymentData paymentData) async {
    final paymentIntent = await _createPaymentIntent(
      PaymentIntentInputModel(
        amount: paymentData.amount.toString(),
        currency: paymentData.currency,
      ),
    );

    await _initPaymentSheet(
      InitPaymentSheetInputModel(clientSecret: paymentIntent.clientSecret!),
    );

    await _displayPaymentSheet();
  }
}
