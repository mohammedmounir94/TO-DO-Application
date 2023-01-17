import 'package:flutter/material.dart';
import 'package:todoapp/util/my_button.dart';

class DialogBox extends StatelessWidget {
  final controller;
  final VoidCallback onSave;
  final VoidCallback OnCancel;

  DialogBox(
      {Key? key,
      required this.controller,
      required this.onSave,
      required this.OnCancel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.yellow.shade300,
      content: Container(
        height: 120,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: controller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), hintText: "Add a New Task"),
            ),
            // buttons -> save + cancel
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // save buttons
                MyButton(
                  text: "Save",
                  onPressed: onSave,
                ),
                // cancel buttons
                MyButton(
                  text: "Cancel",
                  onPressed: OnCancel,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
