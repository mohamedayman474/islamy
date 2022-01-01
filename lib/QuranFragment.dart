import 'package:flutter/material.dart';
import 'package:islamy/Widgets/SuraNameWidget.dart';
import 'package:islamy/main.dart';

class QuranFragment extends StatelessWidget {
  List<String>surasName=["الفاتحة","البقرة","آل عمران","النساء","المائدة","الانعام","ألاعراف","الانفال","التوبة","يونس","هود","يوسف","الرعد","إبراهيم","الحجر","النحل","الإسراء","الكهف","مريم","طه","الأنبياء","الحج","المؤمنون","النور","الفرقان","الشعراء","االنمل","القصص","العنكبوت","الروم",
    "لقمان","السجدة","الاحزاب","سبا","فاطر","يس","الصافات","ص","الزمر","غافر","فصلت","الشوري","الزخرف","الدخان","الجاثية","الاحقاف","محمد","الفتح","الحجرات","ق","الذاريات","الطور","النجم","القمر","الرحمن","الواقعة","الحديد","المجادلة","الحشر","الممتحنة",
    "الصف","الجمعة","المنافقون","التغابن","الطلاق","التحريم","الملك","القلم","الحاقة","المعارج","نوح","الجن","المزمل","المدثر","القيامة","الإنسان","المرسلات","النبأ","النازعات","عبس","التكوير","الانفطار","المطففين","الانشقاق","البروج","الطارق","الاعلي","الغاشية","الفجر","البلد",
    "الشمس","الليل","الضحي","الشرح","التين","العلق","القدر","البينة","الزلزلة","العاديات","القارعة","التكاثر","العصر","الهمزة","الفيل","قريش","الماعون","الكوثر","الكافرون","النصر",
    "المسد","الاخلاص","الفلق","الناس"];


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(flex: 3,
              child: Image.asset('assets/images/quraan_screen_logo.png')
          ),
          SizedBox(height: 12,),
          Container(
            padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                border: Border.all(color: MyThemeData.colorPrimary)
              ),
              child: Text('Sura Name',textAlign: TextAlign.center,
                style: TextStyle(fontWeight: FontWeight.w400,fontSize: 25),)),
          Expanded(flex: 7,
            child: ListView.separated
              (itemCount: surasName.length,
                separatorBuilder: (context,index){
                return Container(
                  color: MyThemeData.colorPrimary,
                  width: 2,
                  height: 2,
                );

            },
                itemBuilder: (context,index){
              return SuraNameWidget(surasName[index],index);
            }),
            
          )
        ],
      ) ,



    );
  }
}
