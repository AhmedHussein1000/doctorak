class PaymentConfig {
  static const String usdCurrency = 'USD';
  static const String egpCurrency = 'EGP';
  static const double usdToEgpRate = 50.0;
  //stripe
  static const String stripeBaseUrl = 'https://api.stripe.com/v1';
  static const String stripePaymentIntentEndPoint = '/payment_intents';
  static const String merchantName = 'Doctorak';
}
