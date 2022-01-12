part of 'extensions.dart';

extension FirebaseUserExtension on User {
  Users convertToUser({
    String name = 'no name',
    String role = 'user',
  }) =>
      Users(this.uid, this.email ?? "", name: name, role: role);

  Future<Users?> fromFireStore() async => await UserServices.getUser(this.uid);
}
