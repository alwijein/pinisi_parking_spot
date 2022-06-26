part of 'services.dart';

class DatabaseServices {
  static FirebaseDatabase fb = FirebaseDatabase.instance;

  static Stream<Event?> parkings(String id) async* {
    // var maps2 = await fb.reference().child('Parking').
    Stream<Event> maps = fb.reference().child('Parking').onValue;
    // var maps2 = await fb.reference().child('Parking').once();
    // var x = maps2.value;
    // var count = 0;
    // print(x['p1']);
    await for (Event data in maps) {
      var json = data.snapshot.value;
      if (json.containsKey(id)) {
        yield data;
      }
    }
  }

  static Stream<Event?> countParking() async* {
    // var maps2 = await fb.reference().child('Parking').
    Stream<Event> maps = fb.reference().child('Parking').onValue;

    await for (Event data in maps) {
      var json = data.snapshot.value;
      yield data;
    }
  }
}
