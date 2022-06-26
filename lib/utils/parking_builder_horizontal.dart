part of 'utils.dart';

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
                        print('success');
                        List.generate(
                          index,
                          (index) {
                            Users users = snapshot.data![index];

                            idActive = snapshot.data![index].id;
                            print(idActive);
                            return "Email: ${users.email} \nStatus: ${users.status}\n";
                          },
                        );

                        if (idActive != "") {
                          _userCollection
                              .doc(idActive)
                              .set({'parking': ' '}, SetOptions(merge: true));
                        }
                        DBref.child('Parking').update({id: false});
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
                        print('success');

                        int index = snapshot.data!.length;
                        String isSelect = '';
                        SelectDialog.showModal(_,
                            label: 'Daftar Pengguna',
                            selectedValue: 'novalue',
                            items: List.generate(index, (index) {
                              Users user = snapshot.data![index];
                              return "$index. ${user.email}";
                            }), onChange: (String seleceted) {
                          var tempt = seleceted.split('.');
                          String x = tempt[0];
                          int y = int.parse(x);
                          isSelect = snapshot.data![y].id;
                          print(tempt);
                          _userCollection
                              .doc(isSelect)
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
