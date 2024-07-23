import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppConfigProvider extends ChangeNotifier {
  ///ba7ot el data elly 7at2srly 3ala kaza widget 3ndy
  String applanguage = 'en';
  ThemeMode appTheme = ThemeMode.light;

  AppConfigProvider() {
    loadPreferences();
  }

  String get Applanguage => applanguage;

  ThemeMode get AppTheme => appTheme;

  void changeLanguage(String newLanguage) async {
    if (applanguage == newLanguage) {
      ///lw el lang elly a5trtaha hya hya nafs el lang bta3ty aslun therfore msh 7n8yar 7aga
      return;
    }
    applanguage = newLanguage;

    ///lw la msh nafs el lang yb2a 75ly el lang bt3ty = lang elly a5trha el user
    notifyListeners();
    await SavePreferences();
  }

  void changeTheme(ThemeMode newMode) async {
    if (appTheme == newMode) {
      return;
    }
    appTheme = newMode;
    notifyListeners();
    await SavePreferences();
  }

  bool isDarkMode() {
    return appTheme == ThemeMode.dark;
  }

  Future<void> SavePreferences() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('appLanguage', applanguage);
    await prefs.setString(
        'appTheme', appTheme == ThemeMode.light ? 'light' : 'dark');
  }

  Future<void> loadPreferences() async {
    final prefs = await SharedPreferences.getInstance();
    applanguage = prefs.getString('appLanguage') ?? 'en';
    final themeString = prefs.getString('appTheme') ?? 'light';
    appTheme = themeString == 'light' ? ThemeMode.light : ThemeMode.dark;
    notifyListeners();
  }
}
