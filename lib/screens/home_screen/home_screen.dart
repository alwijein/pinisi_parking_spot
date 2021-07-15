import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/home_screen/components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Parking Spot Area'),
      //   leading: Icon(
      //     Icons.restart_alt_outlined,
      //     color: kPrimaryLightColor,
      //   ),
      // ),
      body: Body(),
    );
  }
}
