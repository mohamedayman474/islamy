import 'package:flutter/material.dart';
import 'package:islamy/HomeScreen.dart';
import 'package:islamy/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      routes: {
        SplashScreen.ROUTE_NAME:(context)=>SplashScreen(),
        HomeScreen.ROUTE_NAME:(context)=>HomeScreen()
      },
      initialRoute: SplashScreen.ROUTE_NAME,




    );
  }
}

