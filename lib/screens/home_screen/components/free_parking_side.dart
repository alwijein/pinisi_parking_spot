import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/utils/parking_builder_horizontal.dart';

class FreeParkingSide extends StatefulWidget {
  const FreeParkingSide({
    Key? key,
  }) : super(key: key);

  @override
  _FreeParkingSideState createState() => _FreeParkingSideState();
}

class _FreeParkingSideState extends State<FreeParkingSide> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        parkingBuilderHorizontal('p1'),
        parkingBuilderHorizontal('p2'),
        parkingBuilderHorizontal('p3'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('p3'),
        parkingBuilderHorizontal('p4'),
        parkingBuilderHorizontal('p5'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('p6'),
        parkingBuilderHorizontal('p7'),
        parkingBuilderHorizontal('p8'),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        parkingBuilderHorizontal('p9'),
        parkingBuilderHorizontal('p10'),
        parkingBuilderHorizontal('p11'),
      ],
    );
  }
}
