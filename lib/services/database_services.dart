part of 'services.dart';

class DatabaseServices {
  static FirebaseDatabase fb = FirebaseDatabase.instance;
  static Future<dynamic> parkings() async {
    List<ParkingModels> parkings = [];

    var maps = await fb.reference().child('Parking').once();

    var x = maps.value;
    x.forEach((key, value) {
      print(key.toString() + " === " + value.toString());
    });

    return x;
  }
}
