import 'package:flutter/material.dart';
import 'package:flutter_todoapp/util/my_buttons.dart';

class MyDialogBox extends StatelessWidget {
  final controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  MyDialogBox(
      {super.key,
      required this.controller,
      required this.onSave,
      required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow[200],
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new Task',
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MyButtons(buttonName: 'Save', onPressed: onSave),
                const SizedBox(
                  width: 5,
                ),
                MyButtons(buttonName: 'Cancel', onPressed: onCancel),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
