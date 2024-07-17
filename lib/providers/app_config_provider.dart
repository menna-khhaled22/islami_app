import 'package:flutter/material.dart';

class AppConfigProvider extends ChangeNotifier {
  ///ba7ot el data elly 7at2srly 3ala kaza widget 3ndy
  String applanguage = 'en';

  void changeLanguage(String newLanguage) {
    if (applanguage == newLanguage) {
      ///lw el lang elly a5trtaha hya hya nafs el lang bta3ty aslun therfore msh 7n8yar 7aga
      return;
    }
    applanguage = newLanguage;

    ///lw la msh nafs el lang yb2a 75ly el lang bt3ty = lang elly a5trha el user
    notifyListeners();
  }
}
