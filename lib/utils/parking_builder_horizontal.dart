import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pinisi_parking_spot/config/size_config.dart';
import 'package:pinisi_parking_spot/models/models.dart';
import 'package:pinisi_parking_spot/screens/components/parking_box_horizontal.dart';
import 'package:pinisi_parking_spot/services/services.dart';
import 'package:pinisi_parking_spot/services/user_services/services.dart';
import 'package:pinisi_parking_spot/shared/shared.dart';
import 'package:select_dialog/select_dialog.dart';

StreamBuilder<Event?> parkingBuilderHorizontal(String id, String role) {
  final DBref = FirebaseDatabase.instance.reference();
  final CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');
  String idActive = "";
  return StreamBuilder(
    stream: DatabaseServices.parkings(id),
    builder: (_, data) {
      if (data.hasData) {
        // check jika role sebagai user

        if (data.data!.snapshot.value[id] == true && role == 'user') {
          return ParkingBoxHorizontal(
            value: Padding(
              padding: EdgeInsets.all(getPropertionateScreenWidht(5)),
              child: SvgPicture.asset(
                'assets/icons/car_top_view_horizontal.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          );
        } else if (data.data!.snapshot.value[id] == false && role == 'user') {
          return ParkingBoxHorizontal(
            value: Center(
              child: Text(
                id,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        }

        // check jika role sebagai admin
        if (data.data!.snapshot.value[id] == true && role == "admin") {
          return FutureBuilder<List<Users>>(
              future: UserServices.getDataUsers(id),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  int index = snapshot.data!.length;
                  return ParkingBoxHorizontal(
                    value: GestureDetector(
                      onDoubleTap: () {
                        List.generate(
                          index,
                          (index) {
                            Users users = snapshot.data![index];

                            idActive = snapshot.data![index].id;
                            print(idActive);
                            return "Email: ${users.email} \nStatus: ${users.status}\n";
                          },
                        );
                        _userCollection
                            .doc(idActive)
                            .set({'parking': ''}, SetOptions(merge: true));

                        DBref.child('Parking').update({id: false});
                      },
                      onTap: () {
                        SelectDialog.showModal(
                          _,
                          label: 'User Yang Parkir Sekarang',
                          selectedValue: 'novalue',
                          loadingBuilder: (context) =>
                              CircularProgressIndicator(),
                          items: List.generate(
                            index,
                            (index) {
                              Users users = snapshot.data![index];

                              return "Email: ${users.email} \nStatus: ${users.status}\n";
                            },
                          ),
                          showSearchBox: false,
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.all(getPropertionateScreenWidht(5)),
                        child: SvgPicture.asset(
                          'assets/icons/car_top_view_horizontal.svg',
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ),
                  );
                } else {
                  return ParkingBoxHorizontal(
                    value: Center(
                      child: SvgPicture.asset(
                        'assets/icons/connection.svg',
                        color: kPrimaryLightColor,
                      ),
                    ),
                  );
                }
              });
        } else if (data.data!.snapshot.value[id] == false && role == 'admin') {
          return FutureBuilder<List<Users>>(
              future: UserServices.getUsers(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ParkingBoxHorizontal(
                    value: GestureDetector(
                      onTap: () {
                        int index = snapshot.data!.length;
                        SelectDialog.showModal(_,
                            label: 'Daftar Pengguna',
                            selectedValue: 'novalue',
                            items: List.generate(
                              index,
                              (index) =>
                                  "${snapshot.data![index].id}\n${snapshot.data![index].email}",
                            ), onChange: (String seleceted) {
                          var tempt = seleceted.split('\n');
                          print(seleceted);
                          _userCollection
                              .doc(tempt[0])
                              .set({'parking': id}, SetOptions(merge: true));
                        });
                        DBref.child('Parking').update({id: true});
                      },
                      child: Center(
                        child: Text(
                          id,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  );
                } else {
                  return ParkingBoxHorizontal(
                    value: Center(
                      child: SvgPicture.asset(
                        'assets/icons/connection.svg',
                        color: kPrimaryLightColor,
                      ),
                    ),
                  );
                }
              });
        }
      }
      return ParkingBoxHorizontal(
        value: Center(
          child: SvgPicture.asset(
            'assets/icons/connection.svg',
            color: kPrimaryLightColor,
          ),
        ),
      );
    },
  );
}
