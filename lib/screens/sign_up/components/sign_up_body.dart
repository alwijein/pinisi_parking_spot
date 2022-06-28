import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';

import 'package:pinisi_parking_spot/screens/sign_up/components/sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.all(
              getPropertionateScreenWidht(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image.asset(
                    'assets/images/splash_screen.png',
                    width: getPropertionateScreenWidht(150),
                  ),
                ),
                SizedBox(
                  height: getPropertionateScreenWidht(20),
                ),
                SignUpForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
