part of 'extensions.dart';

extension FirebaseUserExtension on User {
  Users convertToUser({
    String name = 'no name',
    String nomorUnik = '',
    String status = '',
    String role = 'user',
  }) =>
      Users(this.uid, this.email ?? "",
          name: name, role: role, nomorUnik: nomorUnik, status: status);

  Future<Users?> fromFireStore() async => await UserServices.getUser(this.uid);
}
