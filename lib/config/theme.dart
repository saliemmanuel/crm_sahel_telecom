import 'package:fluent_ui/fluent_ui.dart';

class ThemeApp {
  static lightTheme() {
    return FluentThemeData(
      scaffoldBackgroundColor: Colors.white,
      shadowColor: Colors.white,
      iconTheme: const IconThemeData(color: Colors.black),
    );
  }
}
