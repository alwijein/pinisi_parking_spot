import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/ask_user_status.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/screens/components/header_text.dart';
import 'package:pinisi_parking_spot/screens/sign_in/sign_in.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:pinisi_parking_spot/screens/sign_up/components/sign_up_form.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(
            getPropertionateScreenWidht(24),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderText(
                title: 'Sign Up',
                subtitle: 'Register and Happy Parking',
              ),
              SignUpForm(),
              DefaultButton(
                text: 'Sign Up',
                press: () {},
              ),
              Spacer(),
              AskUserStatus(
                  subTitle: 'Sign Up',
                  title: 'Already have an account? ',
                  press: () =>
                      context.read<PageBloc>().add(GotoSignInScreen())),
            ],
          ),
        ),
      ),
    );
  }
}
