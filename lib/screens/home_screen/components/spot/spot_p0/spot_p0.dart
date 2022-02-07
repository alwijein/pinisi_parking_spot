import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SpotP0 extends StatelessWidget {
  const SpotP0({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getPropertionateScreenHeight(500),
      padding: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          DefaultButton(
            isInfinity: false,
            text: Text(
              'SPOT 1',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: getPropertionateScreenWidht(18),
              ),
            ),
            press: () {
              context.read<PageBloc>().add(GotoSpotP1());
            },
          ),
          DefaultButton(
            isInfinity: false,
            text: Text(
              'SPOT 2',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: getPropertionateScreenWidht(18),
              ),
            ),
            press: () {
              context.read<PageBloc>().add(GotoSpotP2());
            },
          ),
          DefaultButton(
            isInfinity: false,
            text: Text(
              'SPOT 3',
              style: TextStyle(
                color: kPrimaryColor,
                fontSize: getPropertionateScreenWidht(18),
              ),
            ),
            press: () {
              context.read<PageBloc>().add(GotoSpotP3());
            },
          ),
        ],
      ),
    );
  }
}
