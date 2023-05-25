// ignore_for_file: file_names, avoid_unnecessary_containers, sized_box_for_whitespace
// Chilli Plant

import 'package:flutter/material.dart';
import 'package:soil_test/suggestions/remedies.dart';

class SampleThree extends StatelessWidget {
  const SampleThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: ListView(
        shrinkWrap: true,
        children: [
          Padding(
            padding: const EdgeInsets.all(9.0),
            child: Column(
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
                        image: AssetImage('assets/chilli.png'),
                      ),
                    ),
                    Container(
                      width: 400,
                      child: RichText(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Chilli\n\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "For the optimum growth of chillies needed factors\n\n 73-86 f temperature \n 5.5 -6.8 ph \n 6-8hr sunlight \n 30-50% moisture\n 2.5-5cm water per week",
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
                const SizedBox(
                  height: 40,
                  child: Divider(
                    height: 100,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.white,
                  ),
                ),
                Column(
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
                    Container(
                      width: 400,
                      child: RichText(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          // Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          style: TextStyle(
                            color: Colors.white,
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
                const SizedBox(
                  height: 40,
                  child: Divider(
                    height: 100,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.white,
                  ),
                ),
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
                            color: Colors.white,
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
                const SizedBox(
                  height: 40,
                  child: Divider(
                    height: 100,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.white,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 350,
                      height: 300,
                      child: const Image(
                        fit: BoxFit.fill,
                        image: AssetImage('assets/pineapple.png'),
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
                            color: Colors.white,
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
                                  "For the optimum growth of pineapple needed factors\n\n 65-85f temperature \n 5 – 6 ph\n 6-8hrs sunlight 20,000-30,000 lux\n 40-60% moisture\n 2.5-5cm water per week",
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
                const SizedBox(
                  height: 40,
                  child: Divider(
                    height: 100,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.white,
                  ),
                ),
                Column(
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
                    Container(
                      width: 400,
                      child: RichText(
                        softWrap: true,
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          // Styles for TextSpans must be explicitly defined.
                          // Child text spans will inherit styles from parent
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: 'Banana\n\n',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                              ),
                            ),
                            TextSpan(
                              text:
                                  "For the optimum growth of Banana needed factors\n\n 75-95f  temperature \n 5.6-7 ph\n 6-8hrs sunlight 10,000-20,000 lux \n 50-70% moisture\n 10-15cm water per week",
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
                const SizedBox(
                  height: 40,
                  child: Divider(
                    height: 100,
                    thickness: 5,
                    color: Colors.white,
                  ),
                ),
                const Remedies(),
                const SizedBox(
                  height: 40,
                  child: Divider(
                    height: 100,
                    thickness: 2,
                    indent: 10,
                    endIndent: 10,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
