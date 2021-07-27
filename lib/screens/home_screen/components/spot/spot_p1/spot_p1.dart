import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
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
    return SingleChildScrollView(
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
    );
  }
}
