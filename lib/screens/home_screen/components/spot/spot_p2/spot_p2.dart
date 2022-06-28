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
import '../../utils/vertical_parking.dart';

part 'free_parking_04.dart';
part 'free_parking_05.dart';

class SpotP2 extends StatelessWidget {
  const SpotP2({
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
                for (int i = 44; i <= 55; i++) {
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
                    count.toString() + " / 12",
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
                      height: getPropertionateScreenHeight(0),
                    ),
                    Container(
                      width: getPropertionateScreenWidht(580),
                      child: Image.asset('assets/images/bg_spot_2.png'),
                    ),
                  ],
                ),
                Column(
                  children: [
                    SizedBox(
                      width: getPropertionateScreenWidht(530),
                      height: getPropertionateScreenHeight(100),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getPropertionateScreenWidht(200),
                        ),
                        HorizontalParking(["52", "53", "54"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(60),
                        ),
                        HorizontalParking(["55", "56", "57"]),
                      ],
                    ),
                    SizedBox(
                      height: getPropertionateScreenHeight(70),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getPropertionateScreenWidht(200),
                        ),
                        VerticalParking(["58"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(140),
                        ),
                        VerticalParking(["59"])
                      ],
                    ),
                    SizedBox(
                      height: getPropertionateScreenHeight(70),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getPropertionateScreenWidht(200),
                        ),
                        Column(
                          children: [
                            VerticalParking(["60"]),
                            VerticalParking(["61"]),
                          ],
                        ),
                        SizedBox(
                          width: getPropertionateScreenWidht(140),
                        ),
                        Column(
                          children: [
                            VerticalParking(["62"]),
                            VerticalParking(["63"]),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: getPropertionateScreenHeight(70),
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: getPropertionateScreenWidht(200),
                        ),
                        VerticalParking(["64"]),
                        SizedBox(
                          width: getPropertionateScreenWidht(140),
                        ),
                        VerticalParking(["65"])
                      ],
                    ),
                  ],
                )
              ],
            )

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     FreeParking04(),
          //     FreeParking05(),
          //   ],
          // ),
        ),
        // SingleChildScrollView(
        //   scrollDirection: Axis.horizontal,
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //     children: [
        //       FreeParking04(),
        //       FreeParking05(),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
