part of 'services.dart';

class DatabaseServices {
  static FirebaseDatabase fb = FirebaseDatabase.instance;
  static Stream<Event?> parkings(String id) async* {
    // var maps = await fb.reference().child('Parking').once();
    // var maps2 = await fb.reference().child('Parking').
    Stream<Event> maps = fb.reference().child('Parking').onValue;
    // var x = maps.value;

    // print(x);

    await for (Event data in maps) {
      var json = data.snapshot.value;

      if (json.containsKey(id)) {
        yield data;
      }
    }
  }
}
