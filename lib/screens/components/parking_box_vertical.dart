import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class ParkingBoxVertical extends StatelessWidget {
  const ParkingBoxVertical({
    Key? key,
    required this.value,
  }) : super(key: key);
  final Widget value;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: getPropertionateScreenWidht(34),
      height: getPropertionateScreenHeight(64),
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: kPrimaryLightColor),
      ),
      child: value,
    );
  }
}
