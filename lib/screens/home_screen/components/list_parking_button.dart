import 'package:flutter/material.dart';
import 'package:pinisi_parking_spot/models/models.dart';
import 'package:pinisi_parking_spot/screens/components/default_button.dart';
import 'package:pinisi_parking_spot/services/user_services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:select_dialog/select_dialog.dart';

class ListParkingButton extends StatelessWidget {
  const ListParkingButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Users>>(
        future: UserServices.getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            int index = snapshot.data!.length;
            return DefaultButton(
                isInfinity: false,
                text: Text(
                  'Daftar Parkir',
                  style: primaryTextStyle.copyWith(
                    color: kPrimaryColor,
                    fontWeight: bold,
                  ),
                ),
                press: () {
                  List modelItem = List.generate(
                    index,
                    (index) {
                      Users users = snapshot.data![index];
                      print(users.profilePicture);
                      return "Email: ${users.email} \nStatus: ${users.status}\nPlat Nomor: ${users.platNomor} \nPosisi Parkir: ${users.parking}";
                    },
                  );
                  SelectDialog.showModal(
                    context,
                    label: 'User Yang Parkir Sekarang',
                    selectedValue: 'novalue',
                    loadingBuilder: (context) => CircularProgressIndicator(),
                    items: modelItem,
                  );
                });
          } else {
            return Center(child: CircularProgressIndicator());
          }
        });
  }
}
