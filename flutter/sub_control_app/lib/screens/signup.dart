import "package:flutter/material.dart";
import "package:sub_control_app/screens/login.dart";
import "package:sub_control_app/theme.dart";
import "package:sub_control_app/widgets/login_option.dart";
import "package:sub_control_app/widgets/primary_button.dart";

import "../widgets/signup_form.dart";

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(), //unfocuses keyboard
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: kDefaultPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, //left aligns text,
              children: [
                const SizedBox(
                  height: 120,
                ),
                Text(
                  'Create account',
                  style: titleText,
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      'Already have an account?',
                      style: subTitle,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (_, __, ___) => const LogInScreen(),
                              transitionDuration: Duration.zero,
                            )); //pushes to login screen
                      },
                      child: Text(
                        'Log in',
                        style: textButton.copyWith(
                            decoration: TextDecoration.underline,
                            decorationThickness: 1),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                const SignUpForm(),
                const SizedBox(
                  height: 20,
                ),
                const PrimaryButton(buttonText: 'Sign Up'),
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
