part of 'models.dart';

class Users extends Equatable {
  final String id, email, name, role;
  final String? profilePicture;

  Users(
    this.id,
    this.email, {
    required this.role,
    required this.name,
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
      ];
}
