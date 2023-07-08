import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final String buttonName;
  VoidCallback onPressed;
  MyButtons({super.key, required this.buttonName, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      color: Theme.of(context).primaryColor,
      child: Text(buttonName),
    );
  }
}
