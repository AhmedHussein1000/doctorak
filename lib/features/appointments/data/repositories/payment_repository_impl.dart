import 'dart:developer';

import 'package:doctorak/core/network/api_error_model.dart';
import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/services/payment_data.dart';
import 'package:doctorak/core/services/stripe_service.dart';
import 'package:doctorak/features/appointments/domain/repositories/base_payment_repository.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class PaymentRepositoryImpl extends BasePaymentRepository {
  final StripeService _stripeService;

  PaymentRepositoryImpl(this._stripeService);

  @override
  Future<ApiResult<void>> processStripePayment(PaymentData paymentData) async {
    try {
      await _stripeService.processPayment(paymentData);
      return const ApiResult.success(null);
    } on StripeException catch (e) {
      if (e.error.code == FailureCode.Canceled) {
        return const ApiResult.failure(
          ApiErrorModel(message: 'Payment was cancelled.'),
        );
      }
      log('PaymentRepositoryImpl.processStripePayment StripeException: $e');
      return ApiResult.failure(
        ApiErrorModel(message: e.error.localizedMessage ?? 'Payment failed.'),
      );
    } catch (e) {
      log('PaymentRepositoryImpl.processStripePayment: $e');
      return const ApiResult.failure(
        ApiErrorModel(message: 'An unexpected error occurred during payment.'),
      );
    }
  }
}
