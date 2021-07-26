import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class ParkingBoxHorizontal extends StatelessWidget {
  const ParkingBoxHorizontal({
    Key? key,
    required this.value,
  }) : super(key: key);
  final Widget value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getPropertionateScreenWidht(80),
      height: getPropertionateScreenHeight(45),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: kPrimaryLightColor),
      ),
      child: value,
    );
  }
}
