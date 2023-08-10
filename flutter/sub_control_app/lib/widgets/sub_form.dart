import 'package:flutter/material.dart';
import 'package:sub_control_app/services/date_format.dart';
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
  final paymentController = TextEditingController();
  final cycleController = TextEditingController();

  DateTime date = DateTime.now();

  // creates a new subscription object and clears the text fields
  void _createSubscription() {
    final newSub = SubscriptionData(
        provider: providerController.text,
        price: double.parse(priceController.text),
        renewalDate: date.showFormattedDate(),
        paymentMethod: paymentController.text,
        paymentCycle: cycleController.text);

    // calls the callback function to update the state with the new subscription
    widget.onCreateSubscription(newSub);

    Navigator.pop(context);
    providerController.clear();
    priceController.clear();
    paymentController.clear();
    cycleController.clear();
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    providerController.dispose();
    priceController.dispose();
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
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Renewal Date',
              style: subTitle.copyWith(fontWeight: FontWeight.w500),
            ),
            IconButton(
              icon: const Icon(Icons.calendar_month),
              onPressed: () async {
                DateTime? renewalDate = await showDatePicker(
                    context: context,
                    initialDate: date,
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100));

                if (renewalDate == null) return;

                setState(() => date = renewalDate);
              },
            )
          ],
        ),
      ),
      ElevatedButton(
          onPressed: _createSubscription,
          child: const Text('Add Subscription')),
    ]);
  }
}
