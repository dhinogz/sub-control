import 'package:flutter/material.dart';
import 'package:sub_control_app/theme.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  var _isObscure = true;
  var _isObscureConfirm = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        individualFieldForm('First Name', false),
        individualFieldForm('Last Name', false),
        individualFieldForm('Email', false),
        individualFieldForm('Password', true),
        individualFieldFormConfirmPassword('Confirm Password', true),
      ],
    );
  }

  // Creates the individual fields for the form.
  Padding individualFieldForm(String label, bool pass) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          obscureText: pass ? _isObscure : false,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(
                color: kTextFieldColor,
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
              suffixIcon: pass
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscure = !_isObscure;
                        });
                      },
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                        color: kPrimaryColor,
                      ),
                    )
                  : null),
        ),
      );

  Padding individualFieldFormConfirmPassword(String label, bool pass) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          obscureText: pass ? _isObscureConfirm : false,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: const TextStyle(
                color: kTextFieldColor,
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
              suffixIcon: pass
                  ? IconButton(
                      onPressed: () {
                        setState(() {
                          _isObscureConfirm = !_isObscureConfirm;
                        });
                      },
                      icon: Icon(
                        _isObscureConfirm
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: kPrimaryColor,
                      ),
                    )
                  : null),
        ),
      );
}
