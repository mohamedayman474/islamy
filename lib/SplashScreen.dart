import 'package:flutter/material.dart';
import 'package:islamy/HomeScreen.dart';

class SplashScreen extends StatelessWidget {
  static String ROUTE_NAME="SplashScreen";
  

  @override
  Widget build(BuildContext context) {
    NavigaiteToHome(context, HomeScreen.ROUTE_NAME);
    return Scaffold(
      body: Container(
        width: double.infinity,
          height: double.infinity,
          child: Image.asset('assets/images/thumbnail.png',fit: BoxFit.fill,)),
    );
  }
  void NavigaiteToHome(BuildContext context,String ScreenName){

    Future.delayed(Duration(seconds: 2,),(){
      Navigator.pushNamed(context, ScreenName);
    }) ;
    
  }
}
