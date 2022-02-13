import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/screens/onboarding_screen/components/onboarding_body.dart';
import 'package:pinisi_parking_spot/screens/otp_screen/otp_screen.dart';
import 'package:pinisi_parking_spot/screens/sign_in/sign_in.dart';
import 'package:pinisi_parking_spot/screens/sign_up/sign_up.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      floatingActionButton: DefaultButton(
        isInfinity: false,
        text: Text(
          'Admin',
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: getPropertionateScreenWidht(18),
          ),
        ),
        press: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (_) {
            return SignIn(
              isAdmin: true,
            );
          }));
        },
      ),
      body: OnboardingBody(),
    );
  }
}
