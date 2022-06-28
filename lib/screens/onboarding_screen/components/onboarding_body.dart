import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/screens/sign_in/sign_in.dart';
import 'package:pinisi_parking_spot/screens/sign_up/sign_up.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash_screen.png',
              width: getPropertionateScreenWidht(200),
            ),
            SizedBox(
              height: getPropertionateScreenHeight(24),
            ),
            DefaultButton(
              text: Text(
                'Masuk',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: getPropertionateScreenWidht(18),
                ),
              ),
              press: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return SignIn(
                    isAdmin: false,
                  );
                }));
              },
            ),
            SizedBox(
              height: getPropertionateScreenHeight(24),
            ),
            DefaultButton(
              text: Text(
                'Daftar',
                style: TextStyle(
                  color: kPrimaryColor,
                  fontSize: getPropertionateScreenWidht(18),
                ),
              ),
              press: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return SignUp();
                }));
              },
            ),
          ],
        ),
      ),
    );
  }
}
