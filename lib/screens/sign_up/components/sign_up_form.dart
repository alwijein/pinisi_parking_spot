import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/rounded_input_field.dart';
import 'package:pinisi_parking_spot/screens/components/rounded_password_field.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          RoundedInputField(
            hintText: 'Your Email Address',
            press: () {},
          ),
          Text(
            'Password',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: 16,
            ),
          ),
          RoundedPasswordField(onChanged: () {}),
        ],
      ),
    );
  }
}
