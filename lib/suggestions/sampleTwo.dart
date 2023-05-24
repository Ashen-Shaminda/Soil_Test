// ignore_for_file: file_names, avoid_unnecessary_containers, sized_box_for_whitespace
// Egg Plant

import 'package:flutter/material.dart';

class SampleTwo extends StatelessWidget {
  const SampleTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[500],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 350,
                height: 300,
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/eggplants.png'),
                ),
              ),
            ],
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
                    text: 'Egg Plants\n\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                    ),
                  ),
                  TextSpan(
                    text:
                        "For the optimum growth of eggplants needed factors\n\n 60-95f temperature \n 5.5 to 6.5 ph\n 6-8hrs sunlight 10,000-20,000 lux\n 30-50% moisture\n 2.5-5cm water per week",
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
    );
  }
}
