import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/bloc/user_bloc/user_bloc.dart';
import 'package:pinisi_parking_spot/screens/home_screen/home_screen.dart';
import 'package:pinisi_parking_spot/screens/sign_in/sign_in.dart';
import 'package:pinisi_parking_spot/screens/sign_up/sign_up.dart';
import 'package:pinisi_parking_spot/screens/splash_screen.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<User?>(context);

    if (user == null) {
      if (!(prevPageEvent is GotoSplashScreen)) {
        prevPageEvent = GotoSplashScreen();
        context.read<PageBloc>().add(prevPageEvent!);
      }
    } else {
      if (!(prevPageEvent is GotoHomePage)) {
        context.read<UserBloc>().add(LoadUser(user.uid));
        prevPageEvent = GotoHomePage();
        context.read<PageBloc>().add(prevPageEvent!);
      }
    }

    return BlocBuilder<PageBloc, PageState>(
      builder: (_, pageState) => (pageState is OnSplashScreen)
          ? SplashScreen()
          : (pageState is OnSignInScreen)
              ? SignIn()
              : (pageState is OnSignUpScreen)
                  ? SignUp()
                  : HomeScreen(),
    );
  }
}
