import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_vertical.dart';

class FreeParkingMid extends StatelessWidget {
  FreeParkingMid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            parkingBuilderVertical('p12'),
            parkingBuilderVertical('p13'),
            parkingBuilderVertical('p14'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('p15'),
            parkingBuilderVertical('p16'),
            parkingBuilderVertical('p17'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('p18'),
            parkingBuilderVertical('p19'),
            parkingBuilderVertical('p20'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('p21'),
            parkingBuilderVertical('p22'),
            parkingBuilderVertical('p23'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('p24'),
            parkingBuilderVertical('p25'),
            parkingBuilderVertical('p26'),
          ],
        ),
      ],
    );
  }
}
