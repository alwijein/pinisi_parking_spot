part of 'services.dart';

class DatabaseServices {
  static FirebaseDatabase fb = FirebaseDatabase.instance;
  static Future<bool> parkings(String id) async {
    // List<ParkingModels> parkings = [];

    var maps = await fb.reference().child('Parking').once();

    // print(maps.value);
    var x = maps.value;
    // x.forEach((key, value) {
    //   print(key.toString() + " === " + value.toString());
    // });

    // for (var e in maps.value) {
    //   parkings.add(
    //     ParkingModels(
    //       id_parkir: maps.key.toString(),
    //       isFree: maps.value,
    //     ),
    //   );
    // }

    // print(x['p1']);
    return x[id];
  }
}
