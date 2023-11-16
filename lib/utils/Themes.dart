import 'package:instagram_clone_ui/config/import.dart';

class Themes {
  static ThemeData dark = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      primaryColor: Colors.white,
      brightness: Brightness.dark,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.black,
          titleTextStyle: TextStyle(color: Colors.white),
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white)));
  static ThemeData light = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      primaryColor: Colors.black,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          titleTextStyle: TextStyle(color: Colors.black),
          iconTheme: IconThemeData(color: Colors.black)));
}
