// ignore_for_file: file_names

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:soil_test/suggestions/sampleOne.dart';
import 'package:soil_test/tabs/first_tab.dart';

import '../suggestions/sampleThree.dart';
import '../suggestions/sampleTwo.dart';

class FirebaseData extends StatefulWidget {
  const FirebaseData({super.key});

  @override
  State<FirebaseData> createState() => _FirebaseDataState();
}

class _FirebaseDataState extends State<FirebaseData> {
  final Future<FirebaseApp> _fApp = Firebase.initializeApp();
  String lightState = '0';
  String moisture = '0';
  String temperature = '0';
  String rainDrop = '0';

  int moistureLevel = 0;
  String lightLevel = '';
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
              return data();
            } else {
              return const CircularProgressIndicator();
            }
          }),
    );
  }

  Widget data() {
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
        moistureLevel = int.parse(moisture);

        // rain drop level
        // rainDropLevel = int.parse(rainDrop);

        // temperature level
        // temperatureLevel = sensors.temperatureLevel(double.parse(temperature));
        //light state
        if (moistureLevel == 1024) {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const FirstTab(),
            ),
          );
        }
      });
    });
    return const SampleThree();
  }
}
