part of 'services.dart';

class DatabaseServices {
  static FirebaseDatabase fb = FirebaseDatabase.instance;
  static Future<List<ParkingModels>> parkings() async {
    List<ParkingModels> parkings = [];

    var maps = await fb.reference().child('Students').once();

    var x = maps.value;

    x.forEach((key, value) {
      print(key + " === " + value);
    });

    return [];
  }
}
