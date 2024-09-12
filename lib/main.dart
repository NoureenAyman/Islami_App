import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_details_screen.dart';
import 'package:islamy/home/home_screen.dart';
import 'package:islamy/mythemedata.dart';
import 'package:islamy/providers/app_config_provider.dart';
import 'package:islamy/quran/quran_tab.dart';
import 'package:islamy/quran/sura_details_screen.dart';
import 'package:islamy/radio/radio_tab.dart';
import 'package:islamy/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';
void  main(){
  runApp( ChangeNotifierProvider(
      create: (context)=>AppConfigProvider(),
      child: IslamyAPP()));
}
class IslamyAPP extends StatelessWidget {
  const IslamyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    var provider=Provider.of<AppConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routeName,
      theme: Mythemedata.Lighttheme,
      themeMode: provider.appTheme,
      darkTheme: Mythemedata.darkTheme,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        QuranTab.routeName:(context)=>QuranTab(),
        RadioTab.routeName:(context)=>RadioTab(),
        SebhaTab.routeName:(context)=>SebhaTab(),
        SuraDetailsScreen.routeName:(context)=>SuraDetailsScreen(),
        HadethDetailsScreen.routeName:(context)=>HadethDetailsScreen(),


      },
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,

    ) ;


  }
}

