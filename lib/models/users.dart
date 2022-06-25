part of 'models.dart';

class Users extends Equatable {
  final String id, email, name, role, nomorUnik, status, platNomor;
  final String? profilePicture, parking;

  Users(
    this.id,
    this.email, {
    required this.role,
    required this.name,
    required this.nomorUnik,
    required this.status,
    required this.platNomor,
    this.parking,
    this.profilePicture,
  });

  @override
  String toString() {
    return "[$id] - [$email] - [$name] ";
  }

  @override
  List<Object?> get props => [
        id,
        email,
        name,
        profilePicture,
        role,
        nomorUnik,
        platNomor,
        parking,
      ];
}
