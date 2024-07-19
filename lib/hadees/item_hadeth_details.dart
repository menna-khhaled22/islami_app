import 'package:flutter/material.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

import '../app_colors.dart';

class ItemHadethDetails extends StatelessWidget {
  String name;

  ItemHadethDetails({required this.name});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Text(
      name,
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
