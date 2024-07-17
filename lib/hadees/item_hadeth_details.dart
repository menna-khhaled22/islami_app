import 'package:flutter/material.dart';

class ItemHadethDetails extends StatelessWidget {
  String name;

  ItemHadethDetails({required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textDirection: TextDirection.rtl,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,
    );
  }
}
