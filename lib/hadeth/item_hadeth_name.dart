import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_details_screen.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';

class ItemHadethName extends StatelessWidget {
Hadeth hadeth;

ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       Navigator.of(context).pushNamed(HadethDetailsScreen.routeName,
       arguments:hadeth );

      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,),
    );
  }
}
