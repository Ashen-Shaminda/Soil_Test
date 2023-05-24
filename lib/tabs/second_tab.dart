import 'package:flutter/material.dart';
import 'package:soil_test/suggestions/sampleOne.dart';
import 'package:soil_test/suggestions/sampleThree.dart';

class SecondTab extends StatefulWidget {
  const SecondTab({Key? key}) : super(key: key);

  @override
  State<SecondTab> createState() => _SecondTabState();
}

class _SecondTabState extends State<SecondTab> {
  @override
  Widget build(BuildContext context) {
    return const SampleThree();
  }
}
