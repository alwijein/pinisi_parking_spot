import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pinisi_parking_spot/bloc/user_bloc/user_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button_outlined.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/list_parking_button.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:pinisi_parking_spot/utils/utils.dart';

import '../../utils/horizontal_parking.dart';

part 'free_parking_06.dart';

part 'free_parking_07.dart';

part 'free_parking_08.dart';

part 'free_parking_09.dart';

part 'free_parking_10.dart';

class SpotP3 extends StatelessWidget {
  const SpotP3({
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
                for (int i = 56; i <= 100; i++) {
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
                    count.toString() + " / 46",
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
                      width: getPropertionateScreenWidht(0),
                    ),
                    Container(
                      width: getPropertionateScreenWidht(850),
                      child: Image.asset('assets/images/bg_spot_3.png'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      height: getPropertionateScreenHeight(220),
                    ),
                    Row(
                      children: [
                        SizedBox(width: getPropertionateScreenWidht(126)),
                        Row(
                          children: [
                            HorizontalParking(["66", "67", "68"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["69", "70", "71"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["72", "73", "74"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["75", "76", "77"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["78", "79", "80"])
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: getPropertionateScreenHeight(40),
                    ),
                    Row(
                      children: [
                        SizedBox(width: getPropertionateScreenWidht(126)),
                        Row(
                          children: [
                            HorizontalParking(["81", "82", "83"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["84", "85", "86"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["87", "88", "89"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["90", "91", "92"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["93", "94", "95"])
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                      height: getPropertionateScreenHeight(200),
                    ),
                    Row(
                      children: [
                        SizedBox(width: getPropertionateScreenWidht(126)),
                        Row(
                          children: [
                            HorizontalParking(["96", "97", "98"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["99", "100", "101"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["102", "103", "104"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["105", "106", "107"])
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(20),
                        ),
                        Row(
                          children: [
                            HorizontalParking(["108", "109", "110"])
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            )

            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     FreeParking06(),
            //     FreeParking07(),
            //     FreeParking08(),
            //     FreeParking09(),
            //     FreeParking10(),
            //   ],
            // ),
            ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       FreeParking06(),
        //       FreeParking07(),
        //       FreeParking08(),
        //       FreeParking09(),
        //       FreeParking10(),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
