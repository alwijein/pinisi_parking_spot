import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.child,
    this.sizeWidht = 0.0,
    required this.isWrapSize,
  }) : super(key: key);

  final Widget child;
  final double? sizeWidht;
  final bool isWrapSize;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        vertical: getPropertionateScreenWidht(10),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: getPropertionateScreenHeight(20),
        vertical: getPropertionateScreenWidht(0),
      ),
      width: isWrapSize ? sizeWidht : SizeConfig.screenWidth,
      decoration: BoxDecoration(
        color: kBackgroundColor2,
        borderRadius: BorderRadius.circular(10),
      ),
      child: child,
    );
  }
}
