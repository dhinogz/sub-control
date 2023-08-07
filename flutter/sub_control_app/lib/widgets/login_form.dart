import "package:flutter/material.dart";
import "package:sub_control_app/theme.dart";

class LogInForm extends StatefulWidget {
  LogInForm({super.key});
  bool _isObscure = true;
  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
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
        padding: EdgeInsets.symmetric(vertical: 5),
        child: TextFormField(
          obscureText: pass ? widget._isObscure : false,
          decoration: InputDecoration(
              labelText: label,
              labelStyle: TextStyle(
                color: kTextFieldColor,
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: kPrimaryColor,
                ),
              ),
              suffixIcon: pass
                  ? IconButton(
                      onPressed: () {
                        widget._isObscure = !widget._isObscure;
                        setState(() {});
                      },
                      icon: Icon(
                        widget._isObscure
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: kPrimaryColor,
                      ),
                    )
                  : null),
        ),
      );
}
