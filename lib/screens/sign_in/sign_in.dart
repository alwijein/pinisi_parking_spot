import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/sign_in/components/sign_in_body.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key, required this.isAdmin}) : super(key: key);

  final bool isAdmin;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SignInBody(
        isAdmin: isAdmin,
      ),
    );
  }
}
