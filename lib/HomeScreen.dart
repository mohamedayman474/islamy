import 'package:flutter/material.dart';
import 'package:islamy/HadethFragment.dart';
import 'package:islamy/QuranFragment.dart';
import 'package:islamy/RadioFragment.dart';
import 'package:islamy/SebhaFragment.dart';
import 'package:islamy/main.dart';

class HomeScreen extends StatefulWidget {
  static String ROUTE_NAME = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=2;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(fit: BoxFit.fill,
            image: AssetImage('assets/images/default_bg.png'),
          )
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(elevation: 0,
          centerTitle: true,


          backgroundColor: Theme.of(context).primaryColor,
          title: Text('Islami',style: TextStyle(color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold)),
        ),
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(canvasColor: Theme.of(context).primaryColor),
          child: BottomNavigationBar(
            onTap: (index){
              selectedIndex=index;
              setState(() {

              });
            },
            currentIndex: selectedIndex,
            selectedIconTheme: IconThemeData(color: MyThemeData.colorAccent),
            selectedItemColor: MyThemeData.colorAccent,
            showSelectedLabels: true,
            iconSize: 30,
            items: [
              BottomNavigationBarItem(
                  label: 'Quran',
                  icon: ImageIcon(AssetImage('assets/images/icon_quran.png'))),
              BottomNavigationBarItem(
                  label: 'Hadeth',
                  icon: ImageIcon(AssetImage('assets/images/icon_hadeth.png'))),
              BottomNavigationBarItem(
                  label: 'Sebha',
                  icon: ImageIcon(AssetImage('assets/images/icon_sebha.png'))),
              BottomNavigationBarItem(
                  label: 'Radio',
                  icon: ImageIcon(AssetImage('assets/images/icon_radio.png')))
            ],
          ),
        ),
        body: getMainFragment()


      ),
    );
  }
 Widget getMainFragment(){
    if (selectedIndex==0) {
      return QuranFragment();
    }else if(selectedIndex==1) {
      return HadethFragment();
    }else if (selectedIndex==2) {
      return SebhaFragment();
    }else if(selectedIndex==3){
      return RadioFragment();
    }else return Container();

    }
 }

  







