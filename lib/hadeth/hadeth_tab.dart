import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/app_colors.dart';
import 'package:islamy/hadeth/item_hadeth_name.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/providers/app_config_provider.dart';
import 'package:provider/provider.dart';
class HadethTab extends StatefulWidget {
  const HadethTab({super.key});

  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {
  List<Hadeth> ahadethList=[];

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);

    if(ahadethList.isEmpty){
      loadHadethFile();
    }

    return Column(
      children: [
        Expanded(child: Image.asset('assets/images/hadeth_logo.png')),
         Divider(
          color:  provider.isDarkMode()?
          AppColors.yellowColor:
          AppColors.primarylightcolor,
          thickness: 3,
        ),
        Text(
          AppLocalizations.of(context)!.hadeth_name,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
         Divider(
          color:  provider.isDarkMode()?
          AppColors.yellowColor:
          AppColors.primarylightcolor,
          thickness: 3,
        ),
        Expanded(
          flex: 2,
          child: ahadethList.isEmpty?
           Center(
            child: CircularProgressIndicator(
              color: AppColors.primarylightcolor,
            ),
          ):

          ListView.separated(
              itemBuilder: (context,index){
                return ItemHadethName(
                  hadeth: ahadethList[index],
                 );
              },
              separatorBuilder: (context,index){
                return  Divider(
                  color: provider.isDarkMode()?
                  AppColors.yellowColor:
                  AppColors.primarylightcolor,
                  thickness: 2,
                );
              },
              itemCount: ahadethList.length),

        )
      ],
    );
  }

  void loadHadethFile()async{
    String hadethContent=
    await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadethList=hadethContent.split('#\r\n');
    for(int i=0;i<hadethList.length;i++){
      print(hadethList[i]);
      List<String>hadethLines= hadethList[i].split('\n');
      String title = hadethLines[0];
      hadethLines.removeAt(0);
      Hadeth hadeth= Hadeth(title: title, content: hadethLines);
      ahadethList.add(hadeth);
      setState(() {

      });



    }
  }
}
class Hadeth{
  String title;
  List<String> content;
  Hadeth({required this.title,required this.content});

}
