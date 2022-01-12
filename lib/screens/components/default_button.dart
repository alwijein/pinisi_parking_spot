import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class DefaultButton extends StatelessWidget {
  const DefaultButton({
    Key? key,
    required this.text,
    required this.press,
    this.isInfinity = true,
  }) : super(key: key);

  final Widget text;
  final Function() press;
  final bool isInfinity;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle flabuttonStyle = TextButton.styleFrom(
      backgroundColor: kPrimaryLightColor,
      padding: EdgeInsets.symmetric(
        vertical: getPropertionateScreenWidht(8),
        horizontal: getPropertionateScreenWidht(24),
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    );
    return SizedBox(
        width: isInfinity ? double.infinity : null,
        height: getPropertionateScreenHeight(56),
        child: TextButton(
          style: flabuttonStyle,
          onPressed: press,
          child: text,
        ));
  }
}
