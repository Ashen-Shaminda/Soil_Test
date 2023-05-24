import 'package:flutter/material.dart';

import 'defaultTabController.dart';
import 'drawer.dart';

class Bars extends StatelessWidget {
  const Bars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: const DrawerWidget(),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.blueGrey[900],
            ),
          ),
          titleTextStyle:
              const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          backgroundColor: Colors.blueGrey[100],
          title: const Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(right: 20),
              child: Text(
                'Soil Test',
                style: TextStyle(
                  letterSpacing: 2,
                ),
              ),
            ),
          ),
        ),
        body: const DefaultTabWidget(),
      ),
    );
  }
}
