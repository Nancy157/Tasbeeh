import 'package:flutter/material.dart';
class BottomSheetAssistant extends StatefulWidget {
  const BottomSheetAssistant({Key? key}) : super(key: key);

  @override
  _BottomSheetAssistantState createState() => _BottomSheetAssistantState();
}

class _BottomSheetAssistantState extends State<BottomSheetAssistant> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Column(
        children:[
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children:  [
                IconButton(onPressed:(){
                  Navigator.pop(context);

                }, icon:const Icon(Icons.clear,color:Colors.black87,size:30,),
                ),
              const Text('للمساعدة',
                style:TextStyle(color:Colors.black87,fontSize:30,fontStyle:FontStyle.italic,
                  fontWeight:FontWeight.w500,
                ) ,
              ),
            ],
            ),
          ),
          const Text('هذا التطبيق يستخدم للتسبيح ',style: TextStyle(fontSize:25,
              fontStyle:FontStyle.italic,
          ),),


        ],

      ) ,

    );
  }
}
