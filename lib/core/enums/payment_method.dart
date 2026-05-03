enum PaymentMethod {
  creditCard('Credit Card'),
  paymobCard('Paymob Card'),
  paymobWallet('Paymob Wallet'),
  paypal('Paypal');

  final String displayName;
  const PaymentMethod(this.displayName);
}
