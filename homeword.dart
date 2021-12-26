import 'package:flutter/material.dart';
import 'package:tsbeehh/discword.dart';
import 'package:tsbeehh/mycolors.dart';
class HomeWord extends StatefulWidget {
  const HomeWord({Key? key}) : super(key: key);



  @override
  _HomeWordState createState() => _HomeWordState();
}

class _HomeWordState extends State<HomeWord> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount:2,
      mainAxisSpacing:5,
      crossAxisSpacing:5,
      children:  [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                return const DiscWord();
              }),);
            },
            child: Card(
              shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(35),

              ),
              shadowColor:MYColors.green ,
              color:MYColors.green35,
              elevation:6,
              child:  Center(
                child: GridTile(
                    child:
                    Text('اذكار الصباح',style: TextStyle(
                        color:MYColors.white,
                      fontSize:20,
                      fontWeight:FontWeight.bold,
                    ),
                    ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: GestureDetector(
            onTap:(){
              Navigator.push(context,MaterialPageRoute(builder: (BuildContext context) {
                return const DiscWord();
              }),);
            },
            child: Card(
              shape:RoundedRectangleBorder(
                borderRadius:BorderRadius.circular(35),

              ),
              shadowColor:MYColors.green ,
              color:MYColors.green35,
              elevation:6,
              child:  Center(
                child: GridTile(
                  child:
                  Text('اذكار المساء',style: TextStyle(
                    color:MYColors.white,
                    fontSize:20,
                    fontWeight:FontWeight.bold,
                  ),
                  ),
                ),
              ),
            ),
          ),
        ),




      ],
    );



  }
}
