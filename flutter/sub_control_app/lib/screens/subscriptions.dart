import 'package:flutter/material.dart';

import '../widgets/subscription_card.dart';

class SubControlScreen extends StatefulWidget {
  const SubControlScreen({super.key});

  @override
  State<SubControlScreen> createState() => _SubControlScreenState();
}

class _SubControlScreenState extends State<SubControlScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscriptions'),
      ),
      body: Column(
        children: [
          //dynamic children
          const Column(
            children: [
              SubscriptionCard(
                provider: 'Netflix',
                price: 9.99,
                renewalDate: '2023-10-01',
                paymentMethod: 'Debit Card',
                paymentCycle: 'Monthly',
              ),
              SubscriptionCard(
                provider: 'Spotify',
                price: 4.99,
                renewalDate: '2024-10-01',
                paymentMethod: 'Debit Card',
                paymentCycle: 'Yearly',
              ),
            ],
          ),
          //create button
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton.icon(
                  onPressed: () => Navigator.pushNamed(context, '/add'),
                  icon: const Icon(Icons.add),
                  label: const Text('Add Subscription'))
            ],
          )
          // ListView(shrinkWrap: true, children: const [
          //   SubscriptionCard(
          //     provider: 'Netflix',
          //     price: 9.99,
          //     renewalDate: '2023-10-01',
          //     paymentMethod: 'Debit Card',
          //     paymentCycle: 'Monthly',
          //   ),
          //   SubscriptionCard(
          //     provider: 'Spotify',
          //     price: 4.99,
          //     renewalDate: '2024-10-01',
          //     paymentMethod: 'Debit Card',
          //     paymentCycle: 'Yearly',
          //   ),
          // ]),
        ],
      ),
    );
  }
}
