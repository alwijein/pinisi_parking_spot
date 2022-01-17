import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button_outlined.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/spot/spot_p1/spot_p1.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/spot/spot_p2/spot_p2.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/spot/spot_p3/spot_p3.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/services/user_services/services.dart';
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () => context.read<PageBloc>().add(GotoSpotP1()),
                      child: Image.asset(
                        'assets/images/logo1.png',
                        width: getPropertionateScreenWidht(150),
                      ),
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          onTap: () => AuthServices.signOut(),
                          child: Container(
                            color: kPrimaryColor,
                            child: Row(
                              children: [
                                Text(
                                  'Keluar',
                                  style: TextStyle(
                                      color: kAlertColor,
                                      fontWeight: medium,
                                      fontSize:
                                          getPropertionateScreenWidht(18)),
                                ),
                                SizedBox(
                                  width: getPropertionateScreenWidht(10),
                                ),
                                SvgPicture.asset(
                                    'assets/icons/logout_icon.svg'),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: getPropertionateScreenHeight(30),
                        ),
                        DefaultButtonOutlined(text: 'Spot', press: () {}),
                      ],
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
