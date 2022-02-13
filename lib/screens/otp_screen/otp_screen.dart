import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/screens/otp_screen/components/otp_screen_body.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen(
      {Key? key,
      required this.email,
      required this.password,
      required this.nama,
      required this.nomorUnik,
      required this.status})
      : super(key: key);
  final String email, password, nama, nomorUnik, status;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OtpScreenBody(
        email: email,
        password: password,
        nama: nama,
        nomorUnik: nomorUnik,
        status: status,
      ),
    );
  }
}
