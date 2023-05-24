import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soil_test/tabs/second_tab.dart';

import '../tabs/first_tab.dart';

class DefaultTabWidget extends StatefulWidget {
  const DefaultTabWidget({Key? key}) : super(key: key);

  @override
  State<DefaultTabWidget> createState() => _DefaultTabWidgetState();
}

class _DefaultTabWidgetState extends State<DefaultTabWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      animationDuration: const Duration(milliseconds: 600),
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.blueGrey[900],
        body: const Column(
          children: [
            TabBar(
              indicatorColor: Colors.white,
              indicatorWeight: 5,
              tabs: [
                Tab(
                  icon: Icon(
                    Icons.home,
                    color: Colors.white,
                  ),
                ),
                Tab(
                  child: Text(
                    'SUGGESTIONS',
                    style: TextStyle(
                      letterSpacing: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  FirstTab(),
                  SecondTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
