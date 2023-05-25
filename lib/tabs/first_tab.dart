import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:soil_test/sensors.dart';

class FirstTab extends StatefulWidget {
  const FirstTab({Key? key}) : super(key: key);

  @override
  State<FirstTab> createState() => _FirstTabState();
}

class _FirstTabState extends State<FirstTab> {
  final Future<FirebaseApp> _fApp = Firebase.initializeApp();

  final sensors = Sensors();

  String lightState = '0';
  String moisture = '0';
  String temperature = '0';
  String rainDrop = '0';

  int moistureLevel = 0;
  int lightLevel = 0;
  int rainDropLevel = 0;
  double temperatureLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      backgroundColor: Colors.blueGrey[900],
      body: FutureBuilder(
          future: _fApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return const Text(
                'Something Went Wrong',
                style: TextStyle(fontSize: 50),
              );
            } else if (snapshot.hasData) {
              return content();
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }

  Widget content() {
    DatabaseReference _testRef =
        FirebaseDatabase.instance.reference().child('sensors');
    // listen to firebase realtime database value.
    _testRef.onValue.listen((event) {
      if (!mounted) return;
      setState(() {
        lightState = event.snapshot.value!['lights state'].toString();
        moisture = event.snapshot.value!['moisture state'].toString();
        rainDrop = event.snapshot.value!['rain drop value'].toString();
        temperature = event.snapshot.value!['temperature'].toString();

        // moisture state
        // https://www.geeksforgeeks.org/soil-moisture-measurement-using-arduino-and-soil-moisture-sensor/
        moistureLevel = sensors.moisture(int.parse(moisture));

        // rain drop level
        rainDropLevel = sensors.rainDrop(int.parse(rainDrop));

        // light level
        lightLevel = sensors.lightIntensity(int.parse(lightState));

        // temperature level
        // temperatureLevel = sensors.temperatureLevel(double.parse(temperature));
        //light state
      });
    });
    return Scrollbar(
      thickness: 10,
      radius: const Radius.circular(5),
      child: ListView(
        primary: true,
        shrinkWrap: true,
        children: [
          // container 1
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              height: 30,
              showDuration: const Duration(milliseconds: 1500),
              message: "Moisture Level $moisture",
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
                  percent: (moistureLevel / 10),
                  center: Text(
                    'Level\n$moistureLevel',
                    style: const TextStyle(
                      fontFamily: 'Kanit-Bold.ttf',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white,
                      letterSpacing: 2,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  progressColor: Colors.black54,
                  backgroundColor: Colors.blueGrey.shade700,
                  circularStrokeCap: CircularStrokeCap.butt,
                ),
              ),
            ),
          ),
          // container 2
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              height: 30,
              showDuration: const Duration(milliseconds: 1500),
              message: "Temperature Level $temperature",
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
                    '$temperature C',
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
          ),
          // container 3
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              height: 30,
              showDuration: const Duration(milliseconds: 1500),
              message: "Rain Drop Level $rainDrop",
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
                  percent: (rainDropLevel / 10),
                  center: Text(
                    'Level\n${rainDropLevel}',
                    style: const TextStyle(
                        fontFamily: 'Kanit-Bold.ttf',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 2),
                    textAlign: TextAlign.center,
                  ),
                  progressColor: Colors.black54,
                  backgroundColor: Colors.blueGrey.shade700,
                  circularStrokeCap: CircularStrokeCap.butt,
                ),
              ),
            ),
          ),
          // constainer 4
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Tooltip(
              textStyle: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              height: 30,
              showDuration: const Duration(milliseconds: 1500),
              message: "Lights Intensity Level $lightState",
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
                      'Light Level',
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
                  percent: (rainDropLevel / 10),
                  center: Text(
                    'Level\n$lightLevel',
                    style: const TextStyle(
                        fontFamily: 'Kanit-Bold.ttf',
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                        letterSpacing: 2),
                    textAlign: TextAlign.center,
                  ),
                  progressColor: Colors.black54,
                  backgroundColor: Colors.blueGrey.shade700,
                  circularStrokeCap: CircularStrokeCap.butt,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
