import 'package:flutter/material.dart';
import 'package:islamy/HadethDetails/HadethDetails.dart';
import 'package:islamy/HadethFragment.dart';
import 'package:islamy/suraDetails/SuraDetails.dart';

class HadethName extends StatelessWidget {
   Hadeth hadeth;
   HadethName(this.hadeth);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, HadethDetails.ROUTE_NAME,
        arguments: hadeth);


      },
      child: Container(
        padding: EdgeInsets.all(12) ,
        child : Text(hadeth.title,textAlign: TextAlign.center,
          style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
