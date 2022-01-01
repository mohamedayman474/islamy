import 'package:flutter/material.dart';
import 'package:islamy/suraDetails/SuraDetails.dart';

class SuraNameWidget extends StatelessWidget {
  String suraName;
  int index;
  SuraNameWidget(this.suraName,this.index);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pushNamed(context, SuraDetails.ROUTE_NAME,
            arguments:SuraDetailsArgs(suraName,index+1) );
      },
      child: Container(
        padding: EdgeInsets.all(12) ,
        child : Text(suraName,textAlign: TextAlign.center,
        style: TextStyle(fontSize: 20),),
      ),
    );
  }
}
class SuraDetailsArgs{
  String suranName;
  int index;
  SuraDetailsArgs(this.suranName,this.index);
}