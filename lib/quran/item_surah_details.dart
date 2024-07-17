import 'package:flutter/material.dart';

class ItemSurahSetails extends StatelessWidget {
  String name;

  int index;

  ItemSurahSetails({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$name (${index + 1})',
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,
    );
  }
}
