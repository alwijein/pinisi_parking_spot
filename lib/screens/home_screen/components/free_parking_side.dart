import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class FreeParkingSide extends StatefulWidget {
  const FreeParkingSide({
    Key? key,
  }) : super(key: key);

  @override
  _FreeParkingSideState createState() => _FreeParkingSideState();
}

class _FreeParkingSideState extends State<FreeParkingSide> {
  final fb = FirebaseDatabase.instance;

  @override
  Widget build(BuildContext context) {
    final ref = fb.reference();
    var retrievedName;
    return Column(
      children: [
        ElevatedButton(
          onPressed: () {},
          child: Text('Test'),
        ),
        Container(
          width: getPropertionateScreenWidht(80),
          height: getPropertionateScreenHeight(40),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
          ),
          child: Text(retrievedName ?? "null"),
        ),
        Container(
          width: getPropertionateScreenWidht(80),
          height: getPropertionateScreenHeight(40),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
          ),
        ),
        Container(
          width: getPropertionateScreenWidht(80),
          height: getPropertionateScreenHeight(40),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
          ),
        ),
      ],
    );
  }
}
