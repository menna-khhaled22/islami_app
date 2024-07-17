import 'package:flutter/material.dart';
import 'package:islami_app/app_colors.dart';
import 'package:islami_app/hadees/item_hadeth_details.dart';

import 'hadees_tab.dart';

class HadethDetailsScreen extends StatelessWidget {
  static const String routeName = 'hadeth_details';

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as Hadeth;

    return Stack(
      children: [
        Image.asset(
          'assets/images/background.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title:
                Text(args.title, style: Theme.of(context).textTheme.bodyLarge),
          ),
          body: Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.06,
                vertical: MediaQuery.of(context).size.height * 0.09),
            decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(24)),
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ItemHadethDetails(name: args.content[index]);
              },
              itemCount: args.content.length,
            ),
          ),
        ),
      ],
    );
  }
}
