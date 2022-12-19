import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Result extends StatelessWidget {
  final bool ismale;
  final int age;
  final double result;

  const Result(
      {super.key,
      required this.ismale,
      required this.age,
      required this.result});

  String get resultphrase {
    String textresult = "";

    if (result >= 30) {
      textresult = "obese";
    } else if (result > 25 && result < 30) {
      textresult = "overweight";
    } else if (result >= 18.5 && result <= 24.9) {
      textresult = "normal";
    } else if (result >= 30) {
      textresult = "obese";
    }

    return textresult;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Result",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
          child: Container(
        color: HexColor("FFECEF"),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Result: ${result.toStringAsFixed(2)}",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.black54),
              ),
              Text(
                "Age: $age ",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.black54),
              ),
              Text(
                "Gender: ${ismale ? "male" : "female"}",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.black54),
              ),
              Text(
                "Healthness: $resultphrase",
                style: Theme.of(context)
                    .textTheme
                    .headline2
                    ?.copyWith(color: Colors.black54),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
