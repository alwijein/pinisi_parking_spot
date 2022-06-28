import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

import '../config/size_config.dart';

late BuildContext contextGlobal;

void dialogShow(String id) {
  showDialog(
    context: contextGlobal,
    builder: (BuildContext context) => Center(
      child: Container(
        width: getPropertionateScreenWidht(300),
        height: getPropertionateScreenHeight(500),
        child: AlertDialog(
          title: Text('QrCode'),
          // To display the title it is optional
          content: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              QrImage(
                data: id,
                version: QrVersions.auto,
                size: 200.0,
              )
            ],
          ),
          // Message which will be pop up on the screen
          // Action widget which will provide the user to acknowledge the choice
          actions: [
            FlatButton(
              // FlatButton widget is used to make a text to work like a button
              textColor: Colors.black,
              onPressed: () {
                Navigator.pop(context, 'Cancel');
                // context.read<EventClick>().isClicked();
              },
              // function used to perform after pressing the button
              child: Text('CANCEL'),
            ),
            // FlatButton(
            //   textColor: Colors.black,
            //   onPressed: () {},
            //   child: Text('ACCEPT'),
            // ),
          ],
        ),
      ),
    ),
  );
}
