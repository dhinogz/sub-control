import 'package:flutter/material.dart';
import 'package:sub_control_app/services/subscription_data.dart';
import '../widgets/sub_form.dart';
import '../widgets/subscription_card.dart';

class SubControlScreen extends StatefulWidget {
  const SubControlScreen({super.key});

  @override
  State<SubControlScreen> createState() => _SubControlScreenState();
}

class _SubControlScreenState extends State<SubControlScreen> {
  void _createSubscription(SubscriptionData newSub) {
    setState(() {
      userSubs.add(newSub);
    });
  }

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
                  onPressed: () => {
                        showModalBottomSheet(
                          context: context,
                          isScrollControlled: true,
                          builder: (BuildContext context) {
                            return FractionallySizedBox(
                              heightFactor: 0.8,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: AddSubscriptionForm(
                                    onCreateSubscription: _createSubscription),
                              ),
                            );
                          },
                        )
                      },
                  icon: const Icon(Icons.add),
                  label: const Text('Add Subscription'))
            ],
          )
        ],
      ),
    );
  }
}
