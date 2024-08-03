import 'package:e_commerce_app/theme/theme_modes.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;

  ThemeData get themedata => _themeData;

  set setthemeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  toggletheme() {
    if (_themeData == lightMode) {
      setthemeData = darkMode;
    } else {
      setthemeData = lightMode;
    }
  }
}
