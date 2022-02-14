part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection =
      FirebaseFirestore.instance.collection('users');

  static Future<void> updateUser(Users users) async {
    // String genres = "";

    // for split genre list from models into firebase
    // for (var genre in users.selectedGenres!) {
    //   genres += genre + ((genre != users.selectedGenres!.last) ? ',' : '');
    // }

    // ...

    _userCollection.doc(users.id).set({
      'email': users.email,
      'name': users.name,
      'role': users.role,
      'profilePicture': users.profilePicture ?? "",
      'nomorUnik': users.nomorUnik,
      'status': users.status,
      'parking': users.parking,
    });
  }

  static Future<Users?> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.doc(id).get();

    var data = snapshot.data() as Map;
    return Users(
      id,
      data['email'],
      role: data['role'],
      profilePicture: data['profilePicture'],
      name: data['name'],
      nomorUnik: data['nomorUnik'],
      status: data['status'],
      parking: data['parking'],
    );
  }

  static Future<List<Users>> getUsers() async {
    List<Users> users = [];
    QuerySnapshot maps = await _userCollection.get();

    int id = 0;
    for (var e in maps.docs) {
      users.add(
        Users(
          e.id,
          e['email'],
          role: e['role'],
          profilePicture: e['profilePicture'],
          name: e['name'],
          nomorUnik: e['nomorUnik'],
          status: e['status'],
        ),
      );
      id++;
    }
    return users;
  }

  static Future<List<Users>> getDataUsers(String praking) async {
    List<Users> users = [];
    QuerySnapshot maps =
        await _userCollection.where("parking", isEqualTo: praking).get();
    for (var e in maps.docs) {
      users.add(
        Users(
          e.id,
          e['email'],
          role: e['role'],
          profilePicture: e['profilePicture'],
          name: e['name'],
          nomorUnik: e['nomorUnik'],
          status: e['status'],
        ),
      );
    }
    return users;
  }

  static Future<void> updateData(String email, String id) async {
    await _userCollection.doc(email).update({'name': 'id'});
  }
}
