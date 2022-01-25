import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinisi_parking_spot/bloc/user_bloc/user_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_vertical.dart';

part 'free_parking_06.dart';
part 'free_parking_07.dart';
part 'free_parking_08.dart';
part 'free_parking_09.dart';
part 'free_parking_10.dart';

class SpotP3 extends StatelessWidget {
  const SpotP3({
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
                for (int i = 56; i <= 101; i++) {
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
                    count.toString() + " / 46",
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
              FreeParking06(),
              FreeParking07(),
              FreeParking08(),
              FreeParking09(),
              FreeParking10(),
            ],
          ),
        ),
      ],
    );
  }
}
