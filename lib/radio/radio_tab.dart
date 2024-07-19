import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

import '../providers/app_config_provider.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.1,
        ),
        Image.asset('assets/images/radio_image.png'),
        SizedBox(
          height: screenHeight * 0.1,
        ),
        Text(
          AppLocalizations.of(context)!.holy_quran_radio,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(
          height: screenHeight * 0.1,
        ),
        provider.isDarkMode()
            ? Image.asset('assets/images/play_pause_dark.png')
            : Image.asset('assets/images/play_pause.png')
      ],
    );
  }
}
