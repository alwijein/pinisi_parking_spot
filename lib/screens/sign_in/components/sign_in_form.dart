import 'Package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/rounded_input_field.dart';
import 'package:pinisi_parking_spot/screens/components/rounded_password_field.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(30),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: getPropertionateScreenWidht(16),
            ),
          ),
          RoundedInputField(
            hintText: 'Your mail address',
            press: () {},
          ),
          SizedBox(
            height: getPropertionateScreenHeight(16),
          ),
          Text(
            'Password',
            style: primaryTextStyle.copyWith(
              fontWeight: medium,
              fontSize: getPropertionateScreenWidht(16),
            ),
          ),
          RoundedPasswordField(onChanged: () {})
        ],
      ),
    );
  }
}
