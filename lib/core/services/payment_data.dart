class PaymentData {
  final double amount;
  final String currency;
  final String description;
  final String? email;
  final String? firstName;
  final String? lastName;
  final String? phone;

  const PaymentData({
    required this.amount,
    required this.currency,
    required this.description,
    this.email,
    this.firstName,
    this.lastName,
    this.phone,
  });
}
