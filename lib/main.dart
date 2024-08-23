import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';
import 'package:islamy/home/home_screen.dart';
import 'package:islamy/mythemedata.dart';
import 'package:islamy/quran/quran_tab.dart';
import 'package:islamy/radio/radio_tab.dart';
import 'package:islamy/sebha/sebha_tab.dart';

void  main(){
  runApp(IslamiAPP());
}
class IslamiAPP extends StatelessWidget {
  const IslamiAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeScreen.routename,
      theme: Mythemedata.Lighttheme,
      routes: {
        HomeScreen.routename:(context)=>HomeScreen(),
        HadethTab.routename:(context)=>HadethTab(),
        QuranTab.routename:(context)=>QuranTab(),
        RadioTab.routename:(context)=>RadioTab(),
        SebhaTab.routename:(context)=>SebhaTab(),


      }

    ) ;


  }
}

