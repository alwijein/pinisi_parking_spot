import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class DefaultButtonOutlined extends StatelessWidget {
  const DefaultButtonOutlined({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle DefaultButtonOutlined = OutlinedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      side: BorderSide(width: 2, color: kPrimaryLightColor),
    );

    return OutlinedButton(
      style: DefaultButtonOutlined,
      onPressed: press,
      child: Row(
        children: [
          Text(
            text,
            style: TextStyle(
              fontSize: getPropertionateScreenWidht(18),
              color: kPrimaryLightColor,
            ),
          ),
          Icon(
            Icons.arrow_back_ios_new_outlined,
            color: kPrimaryLightColor,
          ),
        ],
      ),
    );
  }
}
