import 'package:flutter/material.dart';
import 'package:islamy/app_colors.dart';

class HomeScreen extends StatelessWidget {

static String routename='home_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Islami"),
      ),
      body: Stack(
        children: [
          Image.asset("assets/images/default_bg.png",fit: BoxFit.fill,),



        ],
      ) ,
      bottomNavigationBar: Theme(


      data:Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor,

      ) ,
      child: BottomNavigationBar(
        items: [BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '1'),
          BottomNavigationBarItem(icon: Icon(Icons.ac_unit), label: '2'),

          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: '3'),

          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: '4'),

          BottomNavigationBarItem(icon: Icon(Icons.ac_unit),label: '5'),






        ],

      ),
      ));



  }
}
