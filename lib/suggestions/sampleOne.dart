// ignore_for_file: file_names, avoid_unnecessary_containers, sized_box_for_whitespace
// Tomatoes Plant.
import 'package:flutter/material.dart';

class SampleOne extends StatelessWidget {
  const SampleOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/tomatoes.png'),
                ),
              ),
              Container(
                width: 400,
                child: RichText(
                  softWrap: true,
                  textAlign: TextAlign.center,
                  text: const TextSpan(
                    // Styles for TextSpans must be explicitly defined.
                    // Child text spans will inherit styles from parent
                    style: TextStyle(
                      color: Colors.black,
                    ),
                    children: <TextSpan>[
                      TextSpan(
                        text: 'Tomatoes\n\n',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                      TextSpan(
                        text:
                            "For the optimum growth of tomatoes needed factors\n\n 70 - 85f temperature 6.0\n 6.8 ph\n 6-8 hrs sunlight ,10,000-20,000 lux\n 25-50% moisture\n 2.5-5cm water per week",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
