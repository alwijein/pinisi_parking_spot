import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_vertical.dart';

class FreeParkingMid extends StatelessWidget {
  const FreeParkingMid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            parkingBuilderVertical('p2'),
            parkingBuilderVertical('p2'),
            parkingBuilderVertical('p12'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('p13'),
            parkingBuilderVertical('p2'),
            parkingBuilderVertical('p2'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('14'),
            parkingBuilderVertical('p13'),
            parkingBuilderVertical('p12'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('p13'),
            parkingBuilderVertical('p14'),
            parkingBuilderVertical('p15'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('p16'),
            parkingBuilderVertical('p17'),
            parkingBuilderVertical('p18'),
          ],
        ),
      ],
    );
  }
}
