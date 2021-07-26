import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class EntryArrow extends StatelessWidget {
  const EntryArrow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: getPropertionateScreenHeight(20)),
      child: Column(
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
    );
  }
}
