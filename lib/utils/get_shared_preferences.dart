import 'package:shared_preferences/shared_preferences.dart';

class GetSharedPreferences {
  static firstOpen(bool isCheck) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setBool('first', isCheck);
  }

  static afterOpen() async {
    SharedPreferences sp = await SharedPreferences.getInstance();

    return sp.getBool('first');
  }
}
