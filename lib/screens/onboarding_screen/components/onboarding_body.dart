import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                context.read<PageBloc>().add(GotoSignInScreen());
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
                context.read<PageBloc>().add(GotoSignUpScreen());
              },
            ),
          ],
        ),
      ),
    );
  }
}
