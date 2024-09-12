import 'package:flutter/material.dart';
import 'package:islamy/app_colors.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';
import 'package:islamy/hadeth/item_hadeth_details_screen.dart';
import 'package:islamy/providers/app_config_provider.dart';
import 'package:provider/provider.dart';


class HadethDetailsScreen extends StatefulWidget {
static const String routeName='hadeth_details';

  @override
  State<HadethDetailsScreen> createState() => _HadethDetailsScreenState();
}

class _HadethDetailsScreenState extends State<HadethDetailsScreen> {

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    var args= ModalRoute.of(context)?.settings.arguments as Hadeth;



    return Stack(children: [
      provider.isDarkMode()?
      Image.asset("assets/images/home_dark_background.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,

      )
          :

      Image.asset("assets/images/default_bg.png",
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
    Scaffold(
    backgroundColor: Colors.transparent,
    appBar: AppBar(
    title: Text(args.title,
    style: Theme.of(context).textTheme.bodyLarge
    ),
    ),

      body: Container(
        margin: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width*0.05,
          vertical: MediaQuery.of(context).size.height*0.06
        ) ,
        decoration: BoxDecoration(
          color: provider.isDarkMode()?
          AppColors.primarydarkcolor:
          AppColors.whiteColor,
          borderRadius: BorderRadius.circular(24)
        ),
        child: ListView.builder(
            itemBuilder: (context,index){
              return ItemHadethDetailsScreen(content :args.content[index]);
            },
          itemCount:args.content.length),
      ),
    )
    ]
    );
  }


}
