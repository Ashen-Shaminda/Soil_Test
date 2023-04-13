import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';

class FirebaseData extends StatefulWidget {
  const FirebaseData({Key? key}) : super(key: key);

  @override
  State<FirebaseData> createState() => _FirebaseDataState();
}

class _FirebaseDataState extends State<FirebaseData> {
  late final dref = FirebaseDatabase.instance.reference();
  late DatabaseReference databaseReference;

  void initState() {
    // TODO: implement initState
    super.initState();
    databaseReference = dref;
  }

  @override
  Widget build(BuildContext context) {
    return FirebaseAnimatedList(
      shrinkWrap: true,
      query: databaseReference,
      itemBuilder: (BuildContext context, DataSnapshot snapshot,
          Animation animation, int index) {
        return ListView();
      },
    );
  }
}
