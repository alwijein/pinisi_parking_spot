import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/parking_box_horizontal.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

StreamBuilder<Event?> parkingBuilderHorizontal(String id, String role) {
  final DBref = FirebaseDatabase.instance.reference();
  return StreamBuilder(
    stream: DatabaseServices.parkings(id),
    builder: (_, data) {
      if (data.hasData) {
        // check jika role sebagai user

        if (data.data!.snapshot.value[id] == true && role == 'user') {
          return ParkingBoxHorizontal(
            value: Padding(
              padding: EdgeInsets.all(getPropertionateScreenWidht(5)),
              child: SvgPicture.asset(
                'assets/icons/car_top_view_horizontal.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          );
        } else if (data.data!.snapshot.value[id] == false && role == 'user') {
          return ParkingBoxHorizontal(
            value: Center(
              child: Text(
                'Kosong',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }

        // check jika role sebagai admin
        if (data.data!.snapshot.value[id] == true && role == "admin") {
          return ParkingBoxHorizontal(
            value: GestureDetector(
              onTap: () {
                DBref.child('Parking').update({id: false});
              },
              child: Padding(
                padding: EdgeInsets.all(getPropertionateScreenWidht(5)),
                child: SvgPicture.asset(
                  'assets/icons/car_top_view_horizontal.svg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          );
        } else if (data.data!.snapshot.value[id] == false && role == 'admin') {
          return ParkingBoxHorizontal(
            value: GestureDetector(
              onTap: () {
                DBref.child('Parking').update({id: true});
              },
              child: Center(
                child: Text(
                  'Kosong',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          );
        }
      }
      return ParkingBoxHorizontal(
        value: Center(
          child: SvgPicture.asset(
            'assets/icons/connection.svg',
            color: kPrimaryLightColor,
          ),
        ),
      );
    },
  );
}
