import 'package:flutter/material.dart';
import 'package:islamy/HadethFragment.dart';

import '../main.dart';

class HadethDetails extends StatelessWidget {
  static String ROUTE_NAME='hadeth details';

  @override
  Widget build(BuildContext context) {
   Hadeth args= ModalRoute.of(context)!.settings.arguments as Hadeth;
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
            title: Text(
                args.title,
                style: TextStyle(
                    color: MyThemeData.colorAccent,
                    fontWeight: FontWeight.bold)),
          ),
          body:Container(
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
                    args.hadethContent[index],
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
                itemCount: args.hadethContent.length),
          ) ,
        ));
  }
}
