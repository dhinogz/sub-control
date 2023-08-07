import "package:flutter/material.dart";
import "package:sub_control_app/theme.dart";

import "../widgets/login_form.dart";
import "../widgets/primary_button.dart";

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: kDefaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 120,
            ),
            Text(
              'Welcome back',
              style: titleText,
            ),
            SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Text(
                  'New to this app?',
                  style: subTitle,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  'Sign Up',
                  style: textButton.copyWith(
                      decoration: TextDecoration.underline,
                      decorationThickness: 1),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            LogInForm(), //widget
            SizedBox(
              height: 20,
            ),
            Text(
              'Forgot password?',
              style: TextStyle(
                  color: kZambeziColor,
                  fontSize: 14,
                  decoration: TextDecoration.underline,
                  decorationThickness: 1),
            ),
            SizedBox(
              height: 20,
            ),
            PrimaryButton(buttonText: 'Log In'),
          ],
        ),
      ),
    );
  }
}
