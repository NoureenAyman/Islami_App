import 'package:flutter/material.dart';
import 'package:islamy/app_colors.dart';
import 'package:islamy/mythemedata.dart';

class SebhaTab extends StatefulWidget {
static String routeName='Sebha_screen';

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int tasbehCount=0;
  int index =0;
  double angle =0;

  List<String>tasbeh=[
    'سبحان الله',
        ' الحمد لله',
        'لا اله الا الله',
        'الله اكبر',
        'لا حول ولا قوة الا بالله',
  ];
onTap(){
  tasbehCount++;
  angle +=3;
  if(tasbehCount %33==0){
    //tasbehCount=0;
    index++;
  }
  if(index==tasbeh.length){
    index=0;
  }
  setState(() {

  });
}

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 100),
                child: Image.asset('assets/images/head_sebha_logo.png'),
              ),
              GestureDetector(
                onTap: onTap,
                child: Padding(
                  padding: EdgeInsets.only(top:MediaQuery.of(context).size.height*.085,bottom: 26),
                  child: Transform.rotate(
                    angle:angle ,
                      child: Image.asset('assets/images/body_sebha_logo.png')),
                ),
              ),
            ],
          ),
          Text('عدد التسبيحات',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600
          ),),

          Container(
            padding: EdgeInsets.all(20),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color:AppColors.secondarylightcolor,
              borderRadius: BorderRadius.circular(20)
            ),
            child: Text(
              '$tasbehCount',
              style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25,
            ),),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 8),
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                color:AppColors.primarylightcolor,
                borderRadius: BorderRadius.circular(28)
            ),
            child: Text(
              tasbeh[index]
              ,style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 25,
                color: Colors.white
            ),),
          )

        ],
      ),
    );
  }
}
