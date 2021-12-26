import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:tsbeehh/bottomsheetassistant.dart';
import 'package:tsbeehh/homecard.dart';
import 'package:tsbeehh/mycolors.dart';
class DiscWord extends StatefulWidget {
  const DiscWord({Key? key}) : super(key: key);

  @override
  _DiscWordState createState() => _DiscWordState();
}

class _DiscWordState extends State<DiscWord> {

  int count=3;
  void dcrementcount(){
    setState(() {
      if(count>0){
      count--;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor:Colors.white,
      appBar:AppBar(
          centerTitle:true ,
        backgroundColor:Colors.black,
        title:Text('وَذَكِّرْ',style: TextStyle(color:MYColors.green,
          fontSize:30.0,
          fontStyle:FontStyle.italic,
        ),
        ),
        leading:IconButton(onPressed:(){
          Navigator.pop(context);

        }, icon: Icon(
          Icons.arrow_back_ios,size:25,color:MYColors.green,
        ),
        ),

        actions:[
          IconButton(onPressed:(){
            showModalBottomSheet(context: context, builder: (BuildContext context) {
              return const BottomSheetAssistant();
            },);

          }, icon: Icon(
            Icons.info_outline,size:33,color:MYColors.green,
          ),
          ),
        ],
      ) ,
      body:ListView(
        children: [
          HomeCard('قُلْ هُوَ الله أَحَدٌ الله الصَّمَدُ لَمْ يَلِدْ وَلَمْ يُولَدْ وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ',3),
          HomeCard('قُلْ أَعُوذُ بِرَبِّ الْفَلَق مِنْ شَرِّ مَا خَلَق وَمِنْ شَرِّ غَاسِقٍ إِذَا وَقَبَ  وَمِنْ شَرِّ النَّفَّاثَاتِ فِي الْعُقَدِ وَمِنْ شَرِّ حَاسِدٍ إِذَا حَس',3),
          HomeCard('قُلْ أَعُوذُ بِرَبِّ النَّاسِ مَلِكِ النَّاسِ إِلَهِ النَّاسِ مِنْ شَرِّ الْوَسْوَاسِ الْخَنَّاسِ الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاس مِنَ الْجِنَّةِ وَالنَّاسِ',3),
          HomeCard('بسمِ اللهِ الذي لا يَضرُ مع اسمِه شيءٌ في الأرضِ ولا في السماءِ وهو السميعُ العليمِ.',3),
          HomeCard('(سُبْحَانَ اللهِ وَبِحَمْدِهِ، عَدَدَ خَلْقِهِ وَرِضَا نَفْسِهِ وَزِنَةَ عَرْشِهِ وَمِدَادَ كَلِمَاتِهِ)',3),
          HomeCard('(اللَّهُمَّ إنِّي أصبَحتُ أُشهِدُك، وأُشهِدُ حَمَلةَ عَرشِكَ، ومَلائِكَتَك، وجميعَ خَلقِكَ: أنَّكَ أنتَ اللهُ لا إلهَ إلَّا أنتَ، وأنَّ مُحمَّدًا عبدُكَ ورسولُكَ)',3),
          HomeCard('سبحان الله وبحمده سبحان الله العظيم',100),

        ],
      ),

    );
  }
}


