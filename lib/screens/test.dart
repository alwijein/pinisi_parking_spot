import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
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

              // DatabaseServices.parkings();
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
                // child: FutureBuilder(
                //   future: DatabaseServices.parkings('p1'),
                //   builder: (context, data) {
                //     if (data.hasData) {
                //       var x = data.data;
                //       // ParkingModels parkingModels = data.data['p1'];

                //       if (x == true) {
                //         return Text('ada');
                //       } else if (x == false) {
                //         return Text('Kosong');
                //       } else {
                //         return Text('Gagal!');
                //       }
                //     }
                //     return Text("dada");
                //   },
                // ),
                ),
          ),
        ],
      ),
    );
  }
}
