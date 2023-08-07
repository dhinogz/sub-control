import "package:flutter/material.dart";
import "package:sub_control_app/theme.dart";

import "../widgets/login_form.dart";
import "../widgets/login_option.dart";
import "../widgets/primary_button.dart";

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: kDefaultPadding,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Welcome back',
                  style: titleText,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'New to this app?',
                      style: subTitle,
                    ),
                    const SizedBox(
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
                const SizedBox(
                  height: 10,
                ),
                const LogInForm(), //widget
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Forgot password?',
                  style: TextStyle(
                      color: kZambeziColor,
                      fontSize: 14,
                      decoration: TextDecoration.underline,
                      decorationThickness: 1),
                ),
                const SizedBox(
                  height: 20,
                ),
                const PrimaryButton(buttonText: 'Log In'),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Or:',
                      style: subTitle.copyWith(color: kBlackColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const LogInOption(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}