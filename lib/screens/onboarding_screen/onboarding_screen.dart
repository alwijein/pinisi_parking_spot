import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/onboarding_screen/components/body.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
