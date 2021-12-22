part of 'services.dart';

class AuthServices {
  static FirebaseAuth _auth = FirebaseAuth.instance;

  // Fugnsi Untuk Melakukan SignUp

  static Future<SingInSingUpResult> signUp(
      String email, String password, String name) async {
    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);

      // ...

      Users user = userCredential.user!.convertToUser(
        name: name,
      );

      // ...

      await UserServices.updateUser(user);

      return SingInSingUpResult(users: user);

      // ...

    } catch (e, s) {
      return SingInSingUpResult(message: e.toString().split(']')[1]);
    }
  }

  // Fugnsi Untuk Melakukan SignIn

  static Future<SingInSingUpResult?> signIn(
      String email, String password) async {
    try {
      UserCredential authCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      Users? users = await authCredential.user!.fromFireStore();
      return SingInSingUpResult(users: users);
    } catch (e) {
      return SingInSingUpResult(message: e.toString().split(']')[1]);
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
