import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class FreeParkingSide extends StatelessWidget {
  const FreeParkingSide({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
          ),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
          ),
        ),
        Container(
          width: 100,
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: kPrimaryLightColor),
          ),
        ),
      ],
    );
  }
}
