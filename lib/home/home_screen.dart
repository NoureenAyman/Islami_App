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
          Image.asset("assets/images/default_bg.png"),



        ],
      ) ,
      bottomNavigationBar: Theme(


      data:Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor,

      ) ,
      child: BottomNavigationBar(
        items: [


        ],

      ),
      ));



  }
}
