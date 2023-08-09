import 'package:flutter/material.dart';
import 'package:sub_control_app/services/subscription_data.dart';
import 'package:sub_control_app/theme.dart';

class AddSubscriptionForm extends StatefulWidget {
  // callback function to update the state with the new subscription
  final Function(SubscriptionData) onCreateSubscription;

  const AddSubscriptionForm({super.key, required this.onCreateSubscription});

  @override
  State<AddSubscriptionForm> createState() => _AddSubscriptionFormState();
}

class _AddSubscriptionFormState extends State<AddSubscriptionForm> {
  // Create a text controller and use it to retrieve the current value of the TextField.
  final providerController = TextEditingController();
  final priceController = TextEditingController();
  final renewalController = TextEditingController();
  final paymentController = TextEditingController();
  final cycleController = TextEditingController();

  // creates a new subscription object and clears the text fields
  void _createSubscription() {
    final newSub = SubscriptionData(
        provider: providerController.text,
        price: double.parse(priceController.text),
        renewalDate: renewalController.text,
        paymentMethod: paymentController.text,
        paymentCycle: cycleController.text);

    // calls the callback function to update the state with the new subscription
    widget.onCreateSubscription(newSub);

    Navigator.pop(context);
    providerController.clear();
    priceController.clear();
    renewalController.clear();
    paymentController.clear();
    cycleController.clear();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    providerController.dispose();
    priceController.dispose();
    renewalController.dispose();
    paymentController.dispose();
    cycleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(
        'Add Subscription',
        style: titleText.copyWith(fontWeight: FontWeight.w500),
      ),
      const SizedBox(
        height: 20,
      ),
      TextField(
        controller: providerController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Provider',
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
        controller: priceController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Price',
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
        controller: renewalController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Renewal Date',
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
        controller: paymentController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Payment Method',
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      TextField(
        controller: cycleController,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          labelText: 'Payment Cycle',
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      ElevatedButton(
          onPressed: _createSubscription,
          child: const Text('Add Subscription')),
    ]);
  }
}
