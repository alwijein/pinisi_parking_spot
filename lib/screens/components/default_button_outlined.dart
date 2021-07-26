import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/bloc/page_bloc.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/onboarding_screen/components/body.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DefaultButtonOutlined extends StatefulWidget {
  const DefaultButtonOutlined({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final Function() press;

  @override
  _DefaultButtonOutlinedState createState() => _DefaultButtonOutlinedState();
}

String dropdownValue = 'Spot P1';

class _DefaultButtonOutlinedState extends State<DefaultButtonOutlined> {
  @override
  Widget build(BuildContext context) {
    final ButtonStyle DefaultButtonOutlined = OutlinedButton.styleFrom(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      side: BorderSide(width: 2, color: kPrimaryLightColor),
    );

    return OutlinedButton(
      style: DefaultButtonOutlined,
      onPressed: widget.press,
      child: DropdownButton<String>(
        value: dropdownValue,
        icon: Icon(
          Icons.arrow_downward,
          color: kPrimaryLightColor,
        ),
        iconSize: 24,
        elevation: 16,
        style: TextStyle(color: kPrimaryLightColor),
        onChanged: (String? newValue) {
          setState(() {
            dropdownValue = newValue!;
            switch (newValue) {
              case 'Spot P1':
                context.read<PageBloc>().add(GotoSpotP1());
                break;
              case 'Spot P2':
                context.read<PageBloc>().add(GotoSpotP2());
                break;
              case 'Spot P3':
                context.read<PageBloc>().add(GotoSpotP3());
                break;
              case 'Spot P4':
                context.read<PageBloc>().add(GotoSpotP4());
                break;
              default:
            }
          });
        },
        items: <String>['Spot P1', 'Spot P2', 'Spot P3', 'Spot P4']
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }
}
