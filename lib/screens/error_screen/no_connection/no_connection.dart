import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/main.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';

class NoConnection extends StatelessWidget {
  NoConnection({Key? key}) : super(key: key);

  final ButtonStyle DefaultButton = ElevatedButton.styleFrom(
    primary: kPrimaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "assets/images/1_No Connection.png",
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 100,
            left: 30,
            child: ElevatedButton(
              style: DefaultButton,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (_) {
                    return MyApp();
                  }),
                );
              },
              child: Text(
                "Retry".toUpperCase(),
                style: TextStyle(color: kPrimaryLightColor),
              ),
            ),
          )
        ],
      ),
    );
  }
}
