import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  'assets/images/onboarding_images.png',
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: SizeConfig.screenWidth,
                color: kPrimaryColor,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidht(20),
                    vertical: getPropertionateScreenHeight(25),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Welcome',
                        style: TextStyle(
                          color: kPrimaryLightColor,
                          fontSize: getPropertionateScreenWidht(30),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Phinisi Parking Spot, temukan tempat parkiran yang kosong sekarang',
                        style: TextStyle(
                          color: kPrimaryLightColor,
                          fontSize: getPropertionateScreenWidht(22),
                        ),
                        textAlign: TextAlign.center,
                      ),
                      DefaultButton(
                          text: 'Get Start',
                          press: () {
                            GetSharedPreferences.firstOpen(true);
                            context.read<PageBloc>().add(GotoHomePage());
                          }),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
