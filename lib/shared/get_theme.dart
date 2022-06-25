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
    elevation: 0.0, toolbarTextStyle: TextTheme(
      headline6: TextStyle(
        color: kPrimaryLightColor,
        fontSize: 20,
      ),
    ).bodyText2, titleTextStyle: TextTheme(
      headline6: TextStyle(
        color: kPrimaryLightColor,
        fontSize: 20,
      ),
    ).headline6, systemOverlayStyle: SystemUiOverlayStyle.light,
  );
}
