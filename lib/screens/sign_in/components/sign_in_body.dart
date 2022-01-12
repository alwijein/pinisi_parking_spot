import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/ask_user_status.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/screens/components/header_text.dart';
import 'package:pinisi_parking_spot/screens/home_screen/home_screen.dart';
import 'package:pinisi_parking_spot/screens/sign_in/components/sign_in_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({Key? key}) : super(key: key);

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
                title: "Masuk",
                subtitle: "Masuk untuk melanjutkan",
              ),
              SignInForm(),
              Spacer(),
              AskUserStatus(
                title: "Tidak punya akun? ",
                subTitle: 'Daftar',
                press: () => context.read<PageBloc>().add(
                      GotoSignUpScreen(),
                    ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
