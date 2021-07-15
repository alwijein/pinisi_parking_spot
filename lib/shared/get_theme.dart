part of 'shared.dart';

ThemeData getTheme() {
  return ThemeData(
    scaffoldBackgroundColor: kScaffoldColor,
    appBarTheme: appBarTheme(),
  );
}

AppBarTheme appBarTheme() {
  return AppBarTheme(
    color: kScaffoldColor,
    elevation: 0.0,
    brightness: Brightness.dark,
    textTheme: TextTheme(
      headline6: TextStyle(
        color: kPrimaryLightColor,
        fontSize: 20,
      ),
    ),
  );
}
