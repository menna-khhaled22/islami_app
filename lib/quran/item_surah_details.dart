import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class ItemSurahSetails extends StatelessWidget {
  String name;

  int index;

  ItemSurahSetails({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(
      '$name (${index + 1})',
      textDirection: TextDirection.rtl,
      style: provider.isDarkMode()
          ? Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.yellowColor)
          : Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,
    );
  }
}
