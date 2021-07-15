import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/screens/home_screen/home_screen.dart';
import 'package:pinisi_parking_spot/screens/onboarding_screen/onboarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({Key? key}) : super(key: key);

  @override
  _WrapperState createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  SharedPreferences? sp;

  bool isCheck = false;

  @override
  void initState() {
    super.initState();
    Future<SharedPreferences> sp = SharedPreferences.getInstance();
    sp.then((sp) {
      isCheck = sp.getBool('first') ?? false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    context.read<PageBloc>().add(GotoOnBoardingPage());
    return BlocBuilder<PageBloc, PageState>(builder: (_, pageState) {
      return (pageState is OnBoardingPage && isCheck == false)
          ? OnboardingScreen()
          : HomeScreen();
    });
  }
}
