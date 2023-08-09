class SubscriptionData {
  final String provider;
  final double price;
  final String renewalDate;
  final String paymentMethod;
  final String paymentCycle;

  const SubscriptionData(
      {required this.provider,
      required this.price,
      required this.renewalDate,
      required this.paymentMethod,
      required this.paymentCycle});
}
