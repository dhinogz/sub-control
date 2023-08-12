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

// SAMPLE DATA
List<SubscriptionData> userSubs = [
  const SubscriptionData(
    provider: 'Netflix',
    price: 9.99,
    renewalDate: '2023-10-01',
    paymentMethod: 'Debit Card',
    paymentCycle: 'Monthly',
  ),
  const SubscriptionData(
      provider: 'Spotfiy',
      price: 4.99,
      renewalDate: '2024-10-01',
      paymentMethod: 'Pay Pal',
      paymentCycle: 'Monthly'),
];


// FUNCTION WILL GET SUBSCRIPTION LIST FROM API
// BACKEND WILL TURN SUBSCRIPTION JSON TO LIST<SUBSCRIPTIONDATA>
// DISPLAY LIST<SUBSCRIPTIONDATA> IN SUBSCRIPTIONS SCREEN