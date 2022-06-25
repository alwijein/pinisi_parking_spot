import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/screens/components/default_button_outlined.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class CostumeAppBar extends StatelessWidget {
  const CostumeAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Pinisi Parking Spot',
          style: TextStyle(
            color: kPrimaryLightColor,
            fontSize: 20.0,
          ),
        ),
        DefaultButtonOutlined(
          press: () {},
          text: '',
        ),
      ],
    );
  }
}
