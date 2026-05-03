import 'dart:developer';

import 'package:doctorak/core/config/payment_keys.dart';
import 'package:doctorak/core/functions/show_toast.dart';
import 'package:doctorak/core/shared/models/payments_models/paypal_payment_models/amount_models/amount_model.dart';
import 'package:doctorak/core/shared/models/payments_models/paypal_payment_models/amount_models/details_model.dart';
import 'package:doctorak/core/shared/models/payments_models/paypal_payment_models/items_models/paypal_item_list_model.dart';
import 'package:doctorak/core/shared/models/payments_models/paypal_payment_models/items_models/paypal_item_model.dart';
import 'package:doctorak/core/shared/models/payments_models/paypal_payment_models/paypal_payment_model.dart';
import 'package:doctorak/core/services/payment_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';

class PaypalService {
  static void processPaypalPayment(
    BuildContext context, {
    required PaymentData paymentData,
    required VoidCallback onSuccess,
    required VoidCallback onError,
  }) {
    final paypalPaymentModel = PaypalPaymentModel(
      amount: AmountModel(
        total: paymentData.amount.toStringAsFixed(2),
        currency: paymentData.currency,
        details: DetailsModel(
          subtotal: paymentData.amount.toStringAsFixed(2),
          shipping: '0',
          discount: 0,
        ),
      ),
      description: paymentData.description,
      itemList: PaypalItemListModel(
        items: [
          PaypalItemModel(
            name: paymentData.description,
            quantity: 1,
            price: paymentData.amount.toStringAsFixed(2),
            currency: paymentData.currency,
          ),
        ],
      ),
    );

    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (_) => PaypalCheckoutView(
          sandboxMode: true,
          clientId: PaymentKeys.paypalClientId,
          secretKey: PaymentKeys.paypalSecretkey,
          transactions: [paypalPaymentModel.toJson()],
          note: 'Contact us for any questions on your appointment.',
          onSuccess: (Map params) async {
            log('PayPal onSuccess: $params');
            customToast('Payment successful', ToastStates.success);
            Navigator.pop(context);
            onSuccess();
          },
          onError: (error) {
            log('PayPal onError: $error');
            customToast('Payment failed', ToastStates.error);
            Navigator.pop(context);
            onError();
          },
          onCancel: () {
            log('PayPal cancelled');
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
