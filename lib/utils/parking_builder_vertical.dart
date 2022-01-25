import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/parking_box_vertical.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

StreamBuilder<Event?> parkingBuilderVertical(String id, String role) {
  final DBref = FirebaseDatabase.instance.reference();

  return StreamBuilder(
    stream: DatabaseServices.parkings(id),
    builder: (_, data) {
      if (data.hasData) {
        if (data.data!.snapshot.value[id] == true && role == 'user') {
          return ParkingBoxVertical(
              value: Padding(
            padding: EdgeInsets.all(getPropertionateScreenWidht(6)),
            child: SvgPicture.asset(
              'assets/icons/car_top_view_vertical.svg',
              fit: BoxFit.fitWidth,
            ),
          ));
        } else if (data.data!.snapshot.value[id] == false && role == 'user') {
          return ParkingBoxVertical(
            value: Center(
              child: Text(
                id,
                textAlign: TextAlign.center,
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
          return ParkingBoxVertical(
            value: GestureDetector(
              onTap: () {
                DBref.child('Parking').update({id: false});
              },
              child: Padding(
                padding: EdgeInsets.all(getPropertionateScreenWidht(5)),
                child: SvgPicture.asset(
                  'assets/icons/car_top_view_vertical.svg',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          );
        } else if (data.data!.snapshot.value[id] == false && role == 'admin') {
          return ParkingBoxVertical(
            value: GestureDetector(
              onTap: () {
                DBref.child('Parking').update({id: true});
              },
              child: Center(
                child: Text(
                  id,
                  textAlign: TextAlign.center,
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
      return ParkingBoxVertical(
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
