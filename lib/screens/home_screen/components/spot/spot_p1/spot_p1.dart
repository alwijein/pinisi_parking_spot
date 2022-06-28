import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinisi_parking_spot/bloc/user_bloc/user_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button_outlined.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/list_parking_button.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:flutter_launcher_icons/utils.dart';
import 'package:pinisi_parking_spot/utils/utils.dart';

import '../../utils/horizontal_parking.dart';
import '../../utils/vertical_parking.dart';

part 'free_parking_01.dart';
part 'free_parking_02.dart';
part 'free_parking_03.dart';

class SpotP1 extends StatelessWidget {
  const SpotP1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BlocBuilder<UserBloc, UserState>(
              builder: (context, userState) {
                print('sucesd');

                if (userState is UserLoaded) {
                  if (userState.users.role == 'admin') {
                    return ListParkingButton();
                  } else {
                    return SizedBox();
                  }
                } else {
                  return Text('Error');
                }
              },
            ),
            DefaultButtonOutlined(
              text: 'Spot',
              press: () {},
            ),
          ],
        ),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        StreamBuilder<Event?>(
            stream: DatabaseServices.countParking(),
            builder: (_, data) {
              if (data.hasData) {
                int count = 0;
                for (int i = 1; i <= 43; i++) {
                  if (data.data!.snapshot.value[i.toString()] == true) {
                    count++;
                  }
                }
                return Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: getPropertionateScreenWidht(18),
                    vertical: getPropertionateScreenWidht(4),
                  ),
                  decoration: BoxDecoration(
                      border: Border.all(
                        color: kPrimaryLightColor,
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    count.toString() + " / 43",
                    style: TextStyle(
                      color: kPrimaryLightColor,
                      fontSize: getPropertionateScreenWidht(16),
                    ),
                  ),
                );
              } else {
                return CircularProgressIndicator();
              }
            }),
        SizedBox(
          height: getPropertionateScreenHeight(20),
        ),
        SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Stack(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: getPropertionateScreenWidht(100),
                    ),
                    Container(
                      width: getPropertionateScreenWidht(720),
                      child: Image.asset('assets/images/bg_spot_1.png'),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // one
                    SizedBox(
                      height: getPropertionateScreenHeight(96),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getPropertionateScreenWidht(130),
                        ),
                        HorizontalParking(["1", "2", "3"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["4", "5", "6"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["7", "8", "9"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        HorizontalParking(["10"])
                      ],
                    ),

                    // two
                    SizedBox(
                      height: getPropertionateScreenHeight(106),
                    ),
                    VerticalParking(["11", "12"]),
                    SizedBox(height: getPropertionateScreenHeight(0)),
                    Row(
                      children: [
                        SizedBox(
                          width: getPropertionateScreenWidht(202),
                          height: 0,
                        ),
                        HorizontalParking(["13", "14", "15"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["16", "17", "18"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["19", "20", "21"])
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getPropertionateScreenWidht(202),
                          height: getPropertionateScreenHeight(80),
                        ),
                        HorizontalParking(["22", "23", "24"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["25", "26", "27"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["28", "29", "30"])
                      ],
                    ),
                    SizedBox(
                      height: getPropertionateScreenHeight(120),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          height: getPropertionateScreenHeight(20),
                        ),
                        VerticalParking(["31", "32", "33"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(150),
                        ),
                        HorizontalParking(["34", "35", "36"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["37", "38", "39"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["40", "41", "42"])
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: getPropertionateScreenWidht(202),
                          height: getPropertionateScreenHeight(70),
                        ),
                        HorizontalParking(["43", "44", "45"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["46", "47", "48"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(24),
                        ),
                        HorizontalParking(["49", "50", "51"])
                      ],
                    ),
                  ],
                ),
              ],
            )

            // Row(
            //   children: [
            //
            // FreeParking01(),
            // SizedBox(
            //   width: getPropertionateScreenWidht(20),
            // ),
            // FreeParking02(),
            // FreeParking03(),
            // ],
            // ),
            ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     children: [
        //       FreeParking01(),
        //       SizedBox(
        //         width: getPropertionateScreenWidht(20),
        //       ),
        //       FreeParking02(),
        //       FreeParking03(),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
