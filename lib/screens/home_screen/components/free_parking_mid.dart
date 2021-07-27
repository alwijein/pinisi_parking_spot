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
            parkingBuilderVertical('p13'),
            parkingBuilderVertical('p14'),
            parkingBuilderVertical('p15'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('p16'),
            parkingBuilderVertical('p17'),
            parkingBuilderVertical('p18'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('p19'),
            parkingBuilderVertical('p20'),
            parkingBuilderVertical('p21'),
          ],
        ),
        Row(
          children: [
            parkingBuilderVertical('p22'),
            parkingBuilderVertical('p23'),
            parkingBuilderVertical('p24'),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          children: [
            parkingBuilderVertical('p25'),
            parkingBuilderVertical('p26'),
            parkingBuilderVertical('p27'),
          ],
        ),
      ],
    );
  }
}
