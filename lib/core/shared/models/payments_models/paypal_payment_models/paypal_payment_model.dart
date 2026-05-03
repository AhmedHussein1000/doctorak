import 'package:doctorak/core/shared/models/payments_models/paypal_payment_models/amount_models/amount_model.dart';
import 'package:doctorak/core/shared/models/payments_models/paypal_payment_models/items_models/paypal_item_list_model.dart';

class PaypalPaymentModel {
  final AmountModel? amount;
  final String? description;
  final PaypalItemListModel? itemList;

  PaypalPaymentModel({
    required this.amount,
    required this.description,
    required this.itemList,
  });
  Map<String, dynamic> toJson() => {
    'amount': amount?.toJson(),
    'description': description,
    'item_list': itemList?.toJson(),
  };

}
