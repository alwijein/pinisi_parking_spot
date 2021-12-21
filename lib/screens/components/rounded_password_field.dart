import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/screens/components/text_field_container.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class RoundedPasswordField extends StatelessWidget {
  const RoundedPasswordField({Key? key, required this.onChanged})
      : super(key: key);

  final Function() onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      isWrapSize: false,
      child: TextField(
        onChanged: onChanged(),
        obscureText: true,
        style: primaryTextStyle,
        decoration: InputDecoration(
          icon: Icon(
            Icons.lock,
            color: kPrimaryLightColor,
          ),
          suffix: Icon(
            Icons.visibility,
            color: kPrimaryColor,
          ),
          hintText: "Password",
          hintStyle: TextStyle(
            color: kSubtitleTextColor,
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
