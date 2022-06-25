part of 'extensions.dart';

extension FirebaseUserExtension on User {
  Users convertToUser({
    String name = 'no name',
    String nomorUnik = '',
    String status = '',
    String parking = '',
    String role = 'user',
    String platNomor = '',
  }) =>
      Users(
        this.uid,
        this.email ?? "",
        name: name,
        role: role,
        nomorUnik: nomorUnik,
        status: status,
        platNomor: platNomor,
      );

  Future<Users?> fromFireStore() async => await UserServices.getUser(this.uid);
}
