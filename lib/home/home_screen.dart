import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';
import 'package:islamy/providers/app_config_provider.dart';
import 'package:islamy/quran/quran_tab.dart';
import 'package:islamy/radio/radio_tab.dart';
import 'package:islamy/sebha/sebha_tab.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islamy/settings/settings_tab.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex= 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider> (context);
    return Stack(
      children: [
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
            title: Text(AppLocalizations.of(context)!.app_title,
            style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor:Theme.of(context).primaryColor
            ),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index){
                selectedIndex= index;
                setState(() {

                });
              },
              items:  [

                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png'),
                    ),
                label: AppLocalizations.of(context)!.quran
                ),

                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),
                    ),
                label: AppLocalizations.of(context)!.hadeth
                ),

                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),
                    ),
                    label: AppLocalizations.of(context)!.radio
                ),

                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),
                    ),
                    label: AppLocalizations.of(context)!.sebha


                ),
                BottomNavigationBarItem(
                    icon: Icon(Icons.settings,
                    ),
                    label: AppLocalizations.of(context)!.settings


                ),


              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],

    );
  }
  List<Widget>tabs=[
    QuranTab(),const HadethTab(),RadioTab(),SebhaTab(),SettingsTab(),
  ];
}












