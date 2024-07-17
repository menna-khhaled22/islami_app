import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class LanguageBottomSheet extends StatefulWidget {
  @override
  State<LanguageBottomSheet> createState() => _LanguageBottomSheetState();
}

class _LanguageBottomSheetState extends State<LanguageBottomSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: () {
              ///change current lang to english
              provider.changeLanguage('en');
            },
            child: provider.applanguage == 'en'
                ? getSelectedWidget(AppLocalizations.of(context)!.english)
                : getUnSelectedWidget(AppLocalizations.of(context)!.english),
          ),
          SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              ///change current lang to arabic
              provider.changeLanguage('ar');
            },
            child: provider.applanguage == 'ar'
                ? getSelectedWidget(AppLocalizations.of(context)!.arabic)
                : getUnSelectedWidget(AppLocalizations.of(context)!.arabic),
          ),
        ],
      ),
    );
  }

  Widget getSelectedWidget(String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: AppColors.primaryLightColor),
        ),
        Icon(
          Icons.check,
          size: 30,
          color: AppColors.primaryLightColor,
        )
      ],
    );
  }

  Widget getUnSelectedWidget(String text) {
    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
