import 'package:flutter/material.dart';

class AppProvider extends ChangeNotifier{
  String currentLocale = "en";
  ThemeMode currentMode = ThemeMode.light;

  void setCurrentLocale(String newLocale){
    currentLocale = newLocale;
    notifyListeners();
  }
  void setCurrentThemeMode(ThemeMode newTheme){
    currentMode = newTheme;
    notifyListeners();
  }
}