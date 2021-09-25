import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function() resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;

    if (resultScore >= 90) {
      resultText = "You are awesome!";
    } else if (resultScore >= 80) {
      resultText = "You are great!";
    } else if (resultScore >= 70) {
      resultText = "You are good!";
    } else if (resultScore >= 60) {
      resultText = "You are ordinary!";
    } else {
      resultText = "You are so bad!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
            child: Text(
              "Restart Quiz!",
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: resetHandler,
          )
        ],
      ),
    );
  }
}
