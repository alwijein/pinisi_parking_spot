import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button_outlined.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/spot/spot_p1/spot_p1.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/spot/spot_p2/spot_p2.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/spot/spot_p3/spot_p3.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(getPropertionateScreenWidht(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Pinisi Parking Spot',
                      style: TextStyle(
                        color: kPrimaryLightColor,
                        fontSize: 20.0,
                      ),
                    ),
                    DefaultButtonOutlined(text: 'Spot', press: () {}),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Entry',
                      style: TextStyle(
                        color: kPrimaryLightColor,
                        fontSize: getPropertionateScreenWidht(20),
                      ),
                    ),
                    SvgPicture.asset(
                      'assets/icons/arrow_down_icon.svg',
                      color: kPrimaryLightColor,
                    ),
                  ],
                ),
                SizedBox(
                  height: getPropertionateScreenHeight(20),
                ),
                BlocBuilder<PageBloc, PageState>(
                  builder: (_, pageState) {
                    return ((pageState is OnSpotP1)
                        ? SpotP1()
                        : (pageState is OnSpotP2)
                            ? SpotP2()
                            : (pageState is OnSpotP3)
                                ? SpotP3()
                                : SpotP1());
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
