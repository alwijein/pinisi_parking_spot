import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/screens/otp_screen/components/otp_form.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'dart:core';

class OtpScreenBody extends StatelessWidget {
  const OtpScreenBody({
    Key? key,
    required this.email,
    required this.password,
    required this.nama,
    required this.nomorUnik,
    required this.status,
    required this.platNomor,
  }) : super(key: key);
  final String email, password, nama, nomorUnik, status, platNomor;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'KODE VERIFIKASI',
              style: primaryTextStyle.copyWith(
                fontSize: getPropertionateScreenWidht(24),
                fontWeight: medium,
              ),
            ),
            SizedBox(
              height: getPropertionateScreenHeight(24),
            ),
            Text(
              'Mengirimkan kode verifikasi ke alamat Gmail',
              style: primaryTextStyle.copyWith(
                fontSize: getPropertionateScreenWidht(18),
              ),
            ),
            SizedBox(
              height: getPropertionateScreenHeight(24),
            ),
            OtpForm(
              email: email,
              password: password,
              nama: nama,
              nomorUnik: nomorUnik,
              status: status,
              platNomor: platNomor,
            ),
          ],
        ),
      ),
    );
  }
}
