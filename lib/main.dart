import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/home/home_screen.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:islami_app/quran/surah_details_screen.dart';
import 'package:provider/provider.dart';

import 'hadees/hadeth_details_screen.dart';
import 'my_theme_data.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => AppConfigProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SurahDetailsScreen.routeName: (context) => SurahDetailsScreen(),
        HadethDetailsScreen.routeName: (context) => HadethDetailsScreen(),
      },
      theme: MyThemeData.LightMode,
      darkTheme: MyThemeData.DarkMode,
      themeMode: provider.AppTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      locale: Locale(provider.Applanguage),
    );
  }
}
