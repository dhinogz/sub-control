import 'package:flutter/material.dart';
import 'package:sub_control_app/services/subscription_data.dart';

import '../widgets/subscription_card.dart';

class SubControlScreen extends StatefulWidget {
  const SubControlScreen({super.key});

  @override
  State<SubControlScreen> createState() => _SubControlScreenState();
}

class _SubControlScreenState extends State<SubControlScreen> {
  // THIS WILL BE MY JSON DATA
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Subscriptions'),
      ),
      body: Column(
        children: [
          //dynamic children
          ListView.builder(
              shrinkWrap: true,
              itemCount: userSubs.length,
              itemBuilder: (BuildContext context, int index) {
                return Center(
                  child: SubscriptionCard(
                    provider: userSubs[index].provider,
                    price: userSubs[index].price,
                    renewalDate: userSubs[index].renewalDate,
                    paymentMethod: userSubs[index].paymentMethod,
                    paymentCycle: userSubs[index].paymentCycle,
                  ),
                );
              }),
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
