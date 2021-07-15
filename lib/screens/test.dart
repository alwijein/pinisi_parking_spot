import 'dart:convert';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final fb = FirebaseDatabase.instance;
  var retrievedId;
  var retrievedName;

  var x;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    final ref = fb.reference().child('Students');
    return Scaffold(
      appBar: AppBar(
        title: Text('Test Mode'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // ref.once().then((DataSnapshot data) {
              //   print(data.value);
              //   print(data.key);
              // });

              // ref.once().then((DataSnapshot data) {
              //   print(data.value);
              //   print(data.key);
              //   print(data.value['name']);

              //   setState(() {
              //     retrievedId = data.key;
              //     retrievedName = data.value;
              //   });
              // });

              DatabaseServices.parkings();
            },
            child: Text('get'),
          ),
          Container(
            width: getPropertionateScreenWidht(80),
            height: getPropertionateScreenHeight(40),
            decoration: BoxDecoration(
              border: Border.all(width: 2, color: kPrimaryLightColor),
            ),
            child: Center(
              child: FutureBuilder(
                future: DatabaseServices.parkings(),
                builder: (context, data) {
                  if (data.hasData) {
                    Map<String, dynamic> x = data.data as Map<String, dynamic>;

                    if (x['p1'] == true) {
                      return Text('ada');
                    } else if (x['p1'] == false) {
                      return Text('Kosong');
                    } else {
                      return Text('Gagal!');
                    }
                  }
                  return Text("dada");
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
