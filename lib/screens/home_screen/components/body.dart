import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button_outlined.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/free_parking_side.dart';
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
              Row(
                children: [
                  FreeParkingSide(),
                  FreeParkingSide(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
