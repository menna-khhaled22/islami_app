import 'package:flutter/material.dart';
import 'package:islami_app/quran/surah_details_screen.dart';

class ItemSurahName extends StatelessWidget {
  String name;

  int index;

  ItemSurahName({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(SurahDetailsScreen.routeName,
            arguments: SurahDetailsArgs(name: name, index: index));
      },
      child: Text(
        name,
        style: Theme.of(context).textTheme.bodySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}
