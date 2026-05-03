import 'package:doctorak/core/network/api_result.dart';
import 'package:doctorak/core/services/payment_data.dart';

abstract class BasePaymentRepository {
  Future<ApiResult<void>> processStripePayment(PaymentData paymentData);
}
