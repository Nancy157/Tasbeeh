import 'package:flutter/material.dart';
import 'package:tsbeehh/mycolors.dart';

class HomeCard extends StatefulWidget {
   String text;
  int count=3;
   HomeCard(this.text,this.count, {Key? key}) : super(key: key);

  @override
  _HomeCardState createState() => _HomeCardState();
}

class _HomeCardState extends State<HomeCard> {

  void dcrementcount(){
    setState(() {
      if(widget.count>0){
        widget.count--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(color:MYColors.green25 ,
      child: Card(color:MYColors.green35,
        elevation:5,
        shadowColor:MYColors.green,
        margin: const EdgeInsets.symmetric(vertical:8,horizontal:8,),
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(30),
        ),
        child:Column(
          children: [
            Column(
              children: [
                 Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(widget.text,
                    style: const TextStyle(
                      color:Colors.white,
                      fontSize: 30,
                    ),
                    textAlign:TextAlign.center ,


                  ),
                ),
                const SizedBox(
                  height:10,
                ),
                FlatButton(onPressed:(){
                  dcrementcount();
                },
                  child: Text('${widget.count}',
                    style: TextStyle(color:MYColors.white,fontSize:18,

                    ),
                  ),
                  height:45,
                  color:(widget.count==0)?MYColors.red:MYColors.green,

                  minWidth: double.infinity,
                  shape:const RoundedRectangleBorder(
                    borderRadius:BorderRadius.only(
                      bottomRight:Radius.circular(30),
                      bottomLeft:Radius.circular(30),

                    ),
                  ),

                ),
              ],
            ),

          ],
        ),

      ),
    );
  }
}
