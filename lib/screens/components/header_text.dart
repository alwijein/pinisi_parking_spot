import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class HeaderText extends StatelessWidget {
  const HeaderText({
    Key? key,
    required this.title,
    required this.subtitle,
  }) : super(key: key);

  final String title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: getPropertionateScreenHeight(50),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: primaryTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(24),
              fontWeight: semiBold,
            ),
          ),
          Text(
            subtitle,
            style: subtitleTextStyle.copyWith(
              fontSize: getPropertionateScreenWidht(14),
              fontWeight: regular,
            ),
          ),
        ],
      ),
    );
  }
}
