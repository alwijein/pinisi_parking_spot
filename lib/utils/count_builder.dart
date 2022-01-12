import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/parking_box_horizontal.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

StreamBuilder<Event?> parkingBuilderHorizontal(String id) {
  int count = 0;
  return StreamBuilder(
      stream: DatabaseServices.countParking(),
      builder: (_, data) {
        if (data.hasData) {
          for (int i = 0; i < 20; i++) {
            if (data.data!.snapshot.value[i.toString()] == true) {
              count++;
            }
          }
        }
      });
}
