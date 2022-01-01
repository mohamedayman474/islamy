import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islamy/main.dart';
import 'dart:math' as math;

class SebhaFragment extends StatefulWidget {



  @override
  State<SebhaFragment> createState() => _SebhaFragmentState();
}

class _SebhaFragmentState extends State<SebhaFragment> {
  int counter=0;
  List<String> tasbehList=["سبحان الله","الحمدلله","لا اله الا الله","الله اكبر","لا حول ولا قوه الا بالله"];
  int currentIndex=0;
  double angle =0;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        child: Column(
          children: [
            Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                InkWell(
                  onTap: onTasbehClick,
                  child: Container(
                    margin: EdgeInsets.only(top: MediaQuery
                        .of(context).size.height * 0.1),
                    child: Transform.rotate(
                        angle: math.pi/180 * angle,
                   child: Image.asset('assets/images/body_sebha_logo.png'),
                  ),
                ),
                ),
                Container(
                  margin: EdgeInsets.only(left: MediaQuery
                      .of(context)
                      .size
                      .height * 0.05),
                  child: Image.asset('assets/images/head_sebha_logo.png'),
                )
              ],
            ),
            Expanded(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      child: Text('Tasbeh Numbers',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.w600,
                            color: Colors.black
                        ),),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: MyThemeData.colorPrimary,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Text('$counter',
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                    SizedBox(height: 18,),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: MyThemeData.colorPrimary,
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      child: Text(tasbehList[currentIndex ],
                        style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),),

                    )
                  ],
                )
            )
          ],
        )
    );
  }

  void onTasbehClick(){
    setState(() {
      counter++ ;
      angle +=30;
      if(counter % 33 ==0){
        if(currentIndex ==4){
          currentIndex =0;
        }
        currentIndex++;
      }
    });

  }
}
