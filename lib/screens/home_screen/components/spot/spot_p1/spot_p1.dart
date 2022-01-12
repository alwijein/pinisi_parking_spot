import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_horizontal.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_vertical.dart';

part 'free_parking_01.dart';
part 'free_parking_02.dart';
part 'free_parking_03.dart';

class SpotP1 extends StatelessWidget {
  const SpotP1({
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
                for (int i = 1; i <= 43; i++) {
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
                    count.toString() + " / 43",
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
            children: [
              FreeParking01(),
              SizedBox(
                width: getPropertionateScreenWidht(20),
              ),
              FreeParking02(),
              FreeParking03(),
            ],
          ),
        ),
      ],
    );
  }
}
