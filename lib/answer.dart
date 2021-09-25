import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final selectHandler;
  final answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateColor.resolveWith(
                (states) => Colors.blue.shade700)),
        onPressed: selectHandler,
        child: Text(
          answerText,
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
