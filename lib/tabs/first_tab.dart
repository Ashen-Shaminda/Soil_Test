import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  int temperature = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: SizedBox(
        child: Scrollbar(
          thickness: 12,
          radius: const Radius.circular(5),
          child: ListView(
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15,
                            spreadRadius: 6,
                            offset: Offset(3, 4),
                          ),
                        ],
                      ),
                      width: 500,
                      height: 230,
                      child: CircularPercentIndicator(
                        header: const Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            'Soil Moisture Level',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                letterSpacing: 2),
                          ),
                        ),
                        animation: true,
                        animationDuration: 1000,
                        radius: 150,
                        lineWidth: 20,
                        percent: 0.7,
                        center: Text(
                          '$temperature',
                          style: const TextStyle(
                              fontFamily: 'Kanit-Bold.ttf',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                        progressColor: Colors.black54,
                        backgroundColor: Colors.blueGrey.shade700,
                        circularStrokeCap: CircularStrokeCap.butt,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15,
                            spreadRadius: 6,
                            offset: Offset(3, 4),
                          ),
                        ],
                      ),
                      width: 500,
                      height: 230,
                      child: CircularPercentIndicator(
                        header: const Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            'Soil Temperature Level',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                letterSpacing: 2),
                          ),
                        ),
                        animation: true,
                        animationDuration: 1000,
                        radius: 150,
                        lineWidth: 20,
                        percent: 0.7,
                        center: Text(
                          '$temperature %',
                          style: const TextStyle(
                              fontFamily: 'Kanit-Bold.ttf',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                        progressColor: Colors.black54,
                        backgroundColor: Colors.blueGrey.shade700,
                        circularStrokeCap: CircularStrokeCap.butt,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15,
                            spreadRadius: 6,
                            offset: Offset(3, 4),
                          ),
                        ],
                      ),
                      width: 500,
                      height: 230,
                      child: CircularPercentIndicator(
                        header: const Padding(
                          padding: EdgeInsets.only(bottom: 15.0),
                          child: Text(
                            'Rain Drop Level',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                letterSpacing: 2),
                          ),
                        ),
                        animation: true,
                        animationDuration: 1000,
                        radius: 150,
                        lineWidth: 20,
                        percent: 0.7,
                        center: Text(
                          '$temperature%',
                          style: const TextStyle(
                              fontFamily: 'Kanit-Bold.ttf',
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.white,
                              letterSpacing: 2),
                        ),
                        progressColor: Colors.black54,
                        backgroundColor: Colors.blueGrey.shade700,
                        circularStrokeCap: CircularStrokeCap.butt,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.blueGrey,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.black54,
                            blurRadius: 15,
                            spreadRadius: 6,
                            offset: Offset(3, 4),
                          ),
                        ],
                      ),
                      width: 500,
                      height: 230,
                      child: Column(
                        children: const [
                          Text("data"),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
