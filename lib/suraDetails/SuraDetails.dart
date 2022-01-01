
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/Widgets/SuraNameWidget.dart';

import '../main.dart';

class SuraDetails extends StatefulWidget {
  static String ROUTE_NAME = "sura details";

  @override
  State<SuraDetails> createState() => _SuraDetailsState();
}

class _SuraDetailsState extends State<SuraDetails> {
  List<String> suraLines = [];

  @override
  Widget build(BuildContext context) {
    SuraDetailsArgs Args =
        ModalRoute.of(context)!.settings.arguments as SuraDetailsArgs;
    if (suraLines.length == 0)
      readSuraFile('assets/content/' + Args.index.toString() + '.txt');
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
        fit: BoxFit.fill,
        image: AssetImage('assets/images/default_bg.png'),
      )),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            iconTheme: IconThemeData(color: MyThemeData.colorAccent),
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: Text(Args.suranName,
                style: TextStyle(
                    color: MyThemeData.colorAccent,
                    fontWeight: FontWeight.bold)),
          ),
          body: getMainVeiw(),
    ));
  }

  Widget getMainVeiw(){
    if(suraLines.length==0){
      return Center(child: CircularProgressIndicator());
    }else{
      return Container(
        padding: EdgeInsets.all(16),
        margin: EdgeInsets.only(right: 16,
            left: 16,
            bottom: MediaQuery.of(context).size.height*.1
        ),
        decoration: BoxDecoration(
        color: Color.fromRGBO(255, 255, 255, 0.7),
          borderRadius: BorderRadius.circular(16)
        ),
        child: ListView.separated(
            itemBuilder: (context, index) {
              return Text(
                suraLines[index],
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontSize: 25
                ),
              );
            },
            separatorBuilder: (context, index) {
              return Container(
                color: MyThemeData.colorPrimary,
                width: 2,
                height: 2,
              );
            },
            itemCount: suraLines.length),
      );
    }
  }
  void readSuraFile(String fileName) async {
    String suraContent = await rootBundle.loadString(fileName);

    print(suraContent);
    suraLines = suraContent.split('\n');
    setState(() {});
  }
}
