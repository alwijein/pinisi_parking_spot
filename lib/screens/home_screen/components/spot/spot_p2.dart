import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/free_parking_mid.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/free_parking_side.dart';

class SpotP2 extends StatelessWidget {
  const SpotP2({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FreeParkingSide(),
      ],
    );
  }
}
