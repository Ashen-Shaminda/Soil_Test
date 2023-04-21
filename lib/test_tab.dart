import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_core_platform_interface/firebase_core_platform_interface.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:soil_test/firebase/firebaseData.dart';

class FutureWidget extends StatefulWidget {
  const FutureWidget({Key? key}) : super(key: key);

  @override
  State<FutureWidget> createState() => _FutureWidgetState();
}

class _FutureWidgetState extends State<FutureWidget> {
  final Future<FirebaseApp> _fApp = Firebase.initializeApp();

  String lightState = '0';
  String moisture = '0';
  String temperature = '0';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fetch data from Firebase Realtime Database'),
      ),
      body: FutureBuilder(
          future: _fApp,
          builder: (context, snapshot) {
            if (snapshot.hasError) {
              return Text('Something went wrong');
            } else if (snapshot.hasData) {
              return content();
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }

  Widget content() {
    DatabaseReference _testRef =
        FirebaseDatabase.instance.reference().child('sensors');
    // listen to firebase realtime database value.
    _testRef.onValue.listen((event) {
      setState(() {
        lightState = event.snapshot.value['lights state'].toString();
        moisture = event.snapshot.value['moisture state'].toString();
        temperature = event.snapshot.value['temperature state'].toString();
      });
    });
    return SafeArea(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                'Lights State : $lightState',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Moisture State : $moisture',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Center(
              child: Text(
                'Temperature State : $temperature',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
