import 'package:flutter/material.dart';
import 'package:sub_control_app/screens/login.dart';
import 'package:sub_control_app/theme.dart';
import 'package:sub_control_app/widgets/primary_button.dart';

import '../widgets/reset_form.dart';

class PasswordResetScreen extends StatelessWidget {
  const PasswordResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const SizedBox(
            height: 200,
          ),
          Text(
            'Reset Password',
            style: titleText,
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            'Enter your email address.',
            style: subTitle.copyWith(fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 10,
          ),
          const ResetForm(),
          const SizedBox(
            height: 40,
          ),
          const PrimaryButton(buttonText: 'Reset Password'),
          const SizedBox(
            height: 20,
          ),
          GestureDetector(
            onTap: () => Navigator.push(
                context,
                PageRouteBuilder(
                  pageBuilder: (_, __, ___) => const LogInScreen(),
                  transitionDuration: Duration.zero,
                )),
            child: const Text(
              'Return',
              style: TextStyle(
                  color: kZambeziColor,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1),
            ),
          )
        ]),
      ),
    );
  }
}
