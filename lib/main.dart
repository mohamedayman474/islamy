import 'package:flutter/material.dart';

import 'package:islamy/HadethDetails/HadethDetails.dart';
import 'package:islamy/HomeScreen.dart';
import 'package:islamy/SplashScreen.dart';
import 'package:islamy/suraDetails/SuraDetails.dart';


class MyThemeData{
  static Color colorPrimary=Color.fromRGBO(183, 147, 95, 1.0);
  static Color colorAccent=Color.fromRGBO(76, 74, 74, 1.0);
  static Color colorPrimaryDark= Color(0xff141A2E);
  static Color colorAccentDark= Color.fromRGBO(76, 74, 74, 1.0);

}
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      theme: ThemeData(
        primaryColor : MyThemeData.colorPrimary,
              accentColor : MyThemeData.colorAccent

      ),
      darkTheme: ThemeData(
        primaryColor: MyThemeData.colorPrimaryDark,
        accentColor: MyThemeData.colorAccentDark
      ),
      themeMode: ThemeMode.light,
      title: 'Flutter Demo',
      routes: {
        SplashScreen.ROUTE_NAME:(context)=>SplashScreen(),
        HomeScreen.ROUTE_NAME:(context)=>HomeScreen(),
        SuraDetails.ROUTE_NAME:(context)=> SuraDetails(),
        HadethDetails.ROUTE_NAME:(context)=> HadethDetails()
      },
      initialRoute: SplashScreen.ROUTE_NAME,




    );
  }
}

