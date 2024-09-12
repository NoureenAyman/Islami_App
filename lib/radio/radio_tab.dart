import 'package:flutter/material.dart';
import 'package:islamy/app_colors.dart';
import 'package:islamy/providers/app_config_provider.dart';
import 'package:provider/provider.dart';

class RadioTab extends StatelessWidget {

static String routeName='Radio_screen';
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<AppConfigProvider>(context);
    return
      Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/radio_image.png', // Your vintage radio image
              ),
              SizedBox(height: 20),
              Text(
                'إذاعة القرآن الكريم',
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: 'El Messiri',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 50),
              // Media Control Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Previous Button
                  IconButton(
                    icon: Icon(Icons.skip_previous),
                    color:  provider.isDarkMode()?
                    AppColors.yellowColor:
                    AppColors.primarylightcolor,
                    iconSize: 60,
                    onPressed: () {
                      // Previous action
                    },
                  ),
                  SizedBox(width: 20),
                  // Play Button
                  IconButton(
                    icon: Icon(Icons.play_arrow),
                    color:  provider.isDarkMode()?
                    AppColors.yellowColor:
                    AppColors.primarylightcolor,
                    iconSize: 60,
                    onPressed: () {
                      // Play action
                    },
                  ),
                  SizedBox(width: 20),
                  // Next Button
                  IconButton(
                    icon: Icon(Icons.skip_next),
                    color:  provider.isDarkMode()?
                    AppColors.yellowColor:
                    AppColors.primarylightcolor,
                    iconSize: 60,
                    onPressed: () {
                      // Next action
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}

