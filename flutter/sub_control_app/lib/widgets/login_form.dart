import "package:flutter/material.dart";
import "package:sub_control_app/theme.dart";

class LogInForm extends StatefulWidget {
  const LogInForm({super.key});
  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  var _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        individualFieldForm('Email', false),
        individualFieldForm('Password', true)
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
                        _isObscure = !_isObscure;
                        setState(() {});
                      },
                      icon: Icon(
                        _isObscure ? Icons.visibility_off : Icons.visibility,
                        color: kPrimaryColor,
                      ),
                    )
                  : null),
        ),
      );
}
