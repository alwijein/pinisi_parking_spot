import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/free_parking_mid.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/free_parking_side.dart';

class SpotP3 extends StatelessWidget {
  const SpotP3({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FreeParkingSide(),
        FreeParkingSide(),
      ],
    );
  }
}
