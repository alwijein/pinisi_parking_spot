import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/screens/components/text_field_container.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class RoundedInputField extends StatelessWidget {
  const RoundedInputField({
    Key? key,
    required this.hintText,
    required this.press,
    this.isWrap = false,
    this.sizeWidth,
  }) : super(key: key);

  final String hintText;
  final Function() press;
  final bool isWrap;
  final double? sizeWidth;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      isWrapSize: isWrap,
      sizeWidht: sizeWidth,
      child: TextField(
        style: primaryTextStyle,
        onChanged: press(),
        decoration: InputDecoration(
          icon: Icon(
            Icons.email,
            color: kPrimaryLightColor,
          ),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: TextStyle(
            color: kSubtitleTextColor,
          ),
        ),
      ),
    );
  }
}
