import 'package:flutter/material.dart';
import 'package:sub_control_app/theme.dart';

class SubscriptionCard extends StatelessWidget {
  const SubscriptionCard(
      {super.key,
      required this.provider,
      required this.price,
      required this.renewalDate,
      required this.paymentMethod,
      required this.paymentCycle});

  final String provider;
  final double price;
  final String renewalDate;
  final String paymentMethod;
  final String paymentCycle;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
            elevation: 2,
            color: kWhiteColor,
            child: ExpansionTile(title: Text(provider), children: [
              ListTile(
                title: const Text('Provider'),
                trailing: Text(provider),
              ),
              ListTile(
                title: const Text('Price'),
                trailing: Text('\$ $price'),
              ),
              ListTile(
                title: const Text('Renewal Date'),
                trailing: Text(renewalDate),
              ),
              ListTile(
                title: const Text('Payment Method'),
                trailing: Text(paymentMethod),
              ),
              ListTile(
                title: const Text('Payment Cycle'),
                trailing: Text(paymentCycle),
              ),
            ])),
      ],
    );
  }
}
