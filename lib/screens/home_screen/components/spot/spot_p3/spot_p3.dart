import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_horizontal.dart';
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
    return SingleChildScrollView(
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
    );
  }
}
