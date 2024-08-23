import 'package:flutter/material.dart';
import 'package:islamy/hadeth/hadeth_tab.dart';
import 'package:islamy/quran/quran_tab.dart';
import 'package:islamy/radio/radio_tab.dart';
import 'package:islamy/sebha/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routename = 'home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex= 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset("assets/images/default_bg.png",
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text('Islami',
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
              items: [

                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png'),
                    ),
                label: 'Quran'
                ),

                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'),
                    ),
                label: 'Hadeth'
                ),

                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_radio.png'),
                    ),
                    label: 'Radio'
                ),

                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'),
                    ),
                    label: 'Sebha'
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
    QuranTab(),HadethTab(),RadioTab(),SebhaTab()
  ];
}












