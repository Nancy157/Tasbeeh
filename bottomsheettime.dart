import 'package:flutter/material.dart';
import 'package:tsbeehh/mycolors.dart';
class BottomSheetTime extends StatefulWidget {
  const BottomSheetTime({Key? key}) : super(key: key);

  @override
  _BottomSheetTimeState createState() => _BottomSheetTimeState();
}

class _BottomSheetTimeState extends State<BottomSheetTime> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:  [
                IconButton(onPressed:(){
                  Navigator.pop(context);

                }, icon: Icon(Icons.clear,color:MYColors.green35,size:25,),
                ),
                 Text('1443/05/21',
                  style:TextStyle(color:MYColors.green35,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
              ],
            ),
          ),
           Divider(color:MYColors.grey,
            height:10,
            endIndent:5,
            indent:5 ,

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:  const [
                Text('5:24',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
                Text('الفجر',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),

              ],
            ),
          ),
          Divider(color:MYColors.grey,
            height:10,
            endIndent:5,
            indent:5 ,

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:  const [
                Text('11:54',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
                Text('الظهر',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
              ],
            ),
          ),
          Divider(color:MYColors.grey,
            height:10,
            endIndent:5,
            indent:5 ,

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:  const [
                Text('2:45',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
                Text('العصر',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
              ],
            ),
          ),
          Divider(color:MYColors.grey,
            height:10,
            endIndent:5,
            indent:5 ,

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:  const [
                Text('5:5',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
                Text('المغرب',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
              ],
            ),
          ),
          Divider(color:MYColors.grey,
            height:10,
            endIndent:5,
            indent:5 ,

          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:  const [

                Text('6:25',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
                Text('العشاء',
                  style:TextStyle(color:Colors.green,fontSize:20,fontStyle:FontStyle.italic,
                    fontWeight:FontWeight.w500,
                  ) ,
                ),
              ],
            ),
          ),




        ],

      ) ,

    );
  }
}
