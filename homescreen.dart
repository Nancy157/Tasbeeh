
import 'package:flutter/material.dart';
import 'package:tsbeehh/mycolors.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  int count=0;
  void incrementcount(){
    setState(() {
      count++;
    });
  }
  void zerocount(){
    setState(() {
      count= 0;
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold (
      backgroundColor:MYColors.green25 ,
      body: Center(
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text ('$count',
              style:TextStyle(
                  color:MYColors.grey,fontSize:35,
              ),
            ),
            const SizedBox(
              height:10,
            ),
            ElevatedButton(
              onPressed:(){
              incrementcount();
            }, child: Text(
              'سبح',style:TextStyle(
              color:MYColors.green,
              fontSize:25 ,
            ),
              textAlign: TextAlign.center,
            ),
              style:ElevatedButton.styleFrom(
                shape:const CircleBorder(),
                padding:const EdgeInsets.all(30),
                primary:Colors.black87 ,
              ),

            ),
            const SizedBox(
              height:10,
            ),
            ElevatedButton(
              onPressed:(){
              zerocount();
            } , child: Text(
              '0',style:TextStyle(
              color:MYColors.green,
              fontSize:20 ,
            ),
              textAlign: TextAlign.center,
            ),
              style:ElevatedButton.styleFrom(
                shape:const CircleBorder(),
                padding:const EdgeInsets.all(30),
                primary:Colors.black87 ,
              ),

            ),
          ],

        ),
      ),

    );
  }
}
