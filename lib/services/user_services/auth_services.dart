part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  // Fugnsi Untuk Melakukan SignUp

  static Future<bool> signUp(String email, String password, String name,
      String nomorUnik, String status) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // ...

      Users user = userCredential.user!.convertToUser(
        name: name,
        nomorUnik: nomorUnik,
        status: status,
      );

      // ...

      await UserServices.updateUser(user);

      return true;

      // ...

    } catch (e) {
      return false;
    }
  }

  // Fugnsi Untuk Melakukan SignIn

  static Future<bool> signIn(String email, String password) async {
    try {
      UserCredential authCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      Users? users = await authCredential.user!.fromFireStore();
      return true;
    } catch (e) {
      return false;
    }
  }

  // Fugnsi Untuk Melakukan SignOut

  static Future<void> signOut() async {
    await _auth.signOut();
  }

  // Fungsi untuk melakukan pengecekan state now

  static Stream<User?> get userStream => _auth.authStateChanges();
}

class SingInSingUpResult {
  final Users? users;
  final String? message;

  SingInSingUpResult({this.users, this.message});
}
