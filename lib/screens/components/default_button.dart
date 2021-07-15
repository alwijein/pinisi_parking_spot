import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;
  @override
  Widget build(BuildContext context) {
    final ButtonStyle DefaultButton = ElevatedButton.styleFrom(
      primary: kPrimaryLightColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
    );

    return SizedBox(
      width: getPropertionateScreenWidht(241),
      height: getPropertionateScreenHeight(50),
      child: ElevatedButton(
        style: DefaultButton,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getPropertionateScreenWidht(20),
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
