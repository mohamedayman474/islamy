import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islamy/Widgets/HadethTitle.dart';

import 'main.dart';

class HadethFragment extends StatefulWidget {
  @override
  State<HadethFragment> createState() => _HadethFragmentState();
}

class _HadethFragmentState extends State<HadethFragment> {
  List<Hadeth> allAhadeth=[];

  @override
  Widget build(BuildContext context) {
    if(allAhadeth.length==0)readHadethFileContent();
    readHadethFileContent();
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 3,
              child: Image.asset('assets/images/hadethLogo.png')
          ),
          SizedBox(height: 12,),
          Container(
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  border: Border.all(color: MyThemeData.colorPrimary)
              ),
              child: Text('Hadeth',textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),)),
          Expanded(flex: 7,
            child: ListView.separated
              (itemCount: allAhadeth.length,
                separatorBuilder: (context,index){
                  return Container(
                    color: MyThemeData.colorPrimary,
                    width: 2,
                    height: 2,
                  );

                },
                itemBuilder: (context,index){
                  return HadethName(allAhadeth[index]);
                }),

          )
        ],
      ) ,



    );
  }

  void readHadethFileContent() async {
    String allAhadethContent = await rootBundle.loadString(
        'assets/content/ahadeth.txt');
    List<String>AllAhadeth = allAhadethContent.split('#\r\n');
    List<Hadeth> allHadethList=[];
    for (int i = 0; i < AllAhadeth.length; i++) {
      String hadeth = AllAhadeth[i];
      List<String>singleHadethLines = hadeth.split('\n');
      String title = singleHadethLines[0];
      singleHadethLines.removeAt(0);

      allHadethList.add(Hadeth(title,singleHadethLines)) ;
    }
    allAhadeth=allHadethList;
    setState(() {

    });
  }
}
class Hadeth{
  String title;
  List<String> hadethContent;
  Hadeth(this.title,this.hadethContent);
}