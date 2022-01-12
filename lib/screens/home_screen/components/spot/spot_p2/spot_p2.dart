import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_horizontal.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_vertical.dart';

part 'free_parking_04.dart';
part 'free_parking_05.dart';

class SpotP2 extends StatelessWidget {
  const SpotP2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        StreamBuilder<Event?>(
            stream: DatabaseServices.countParking(),
            builder: (_, data) {
              if (data.hasData) {
                int count = 0;
                for (int i = 44; i <= 55; i++) {
                  if (data.data!.snapshot.value[i.toString()] == true) {
                    count++;
                  }
                }
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidht(18),
                    vertical: getPropertionateScreenWidht(4),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: kPrimaryLightColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    count.toString() + " / 12",
                    style: TextStyle(
                      color: kPrimaryLightColor,
                      fontSize: getPropertionateScreenWidht(16),
                    ),
                  ),
                );
              } else {
                return CircularProgressIndicator();
              }
            }),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FreeParking04(),
              FreeParking05(),
            ],
          ),
        ),
      ],
    );
  }
}
