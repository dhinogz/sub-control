import "package:flutter/material.dart";

class LogInOption extends StatelessWidget {
  const LogInOption({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        OptionButton(
          iconImage:
              Image(width: 20, image: AssetImage('images/google-logo.png')),
          textButton: 'Log in with Google',
        ),
        SizedBox(
          height: 10,
        ),
        OptionButton(
            iconImage:
                Image(width: 20, image: AssetImage('images/fb-logo.png')),
            textButton: 'Log in with Facebook')
      ],
    );
  }
}

class OptionButton extends StatelessWidget {
  const OptionButton(
      {super.key, required this.iconImage, required this.textButton});
  final Image iconImage;
  final String textButton;
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Container(
      height: mediaQuery.height * 0.06,
      width: mediaQuery.width * 0.85,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          iconImage,
          const SizedBox(
            width: 10,
          ),
          Text(textButton),
        ],
      ),
    );
  }
}
