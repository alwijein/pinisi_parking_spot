import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/parking_box_horizontal.dart';
import 'package:pinisi_parking_spot/services/services.dart';

StreamBuilder<Event?> parkingBuilderHorizontal(String id) {
  return StreamBuilder(
    stream: DatabaseServices.parkings(id),
    builder: (_, data) {
      if (data.hasData) {
        print(data.data);
        if (data.data!.snapshot.value[id] == true) {
          return ParkingBoxHorizontal(
            value: Padding(
              padding: EdgeInsets.all(getPropertionateScreenWidht(5)),
              child: SvgPicture.asset(
                'assets/icons/car_top_view_horizontal.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          );
        } else {
          return ParkingBoxHorizontal(
            value: Center(
              child: Text(
                'kosong',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }
      }
      return ParkingBoxHorizontal(
        value: Center(
          child: Text(
            'no connect',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      );
    },
  );
}
