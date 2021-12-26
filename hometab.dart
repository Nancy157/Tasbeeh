import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
import 'package:tsbeehh/bottomsheetassistant.dart';
import 'package:tsbeehh/bottomsheettime.dart';
import 'package:tsbeehh/homeword.dart';


import 'homescreen.dart';
import 'mycolors.dart';

class HomeTab extends StatefulWidget {

  @override
  _HomeTabState createState() => _HomeTabState();
}

class _HomeTabState extends State<HomeTab> with SingleTickerProviderStateMixin {
  final tablist=['السبحة الالكترونية','حصن المسلم'];
  final tab=[HomeScreen()];
  late TabController  _tabController;
  @override
  void initState() {
    _tabController = TabController(vsync: this, length: tablist.length);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:AppBar(centerTitle:true ,
        backgroundColor:Colors.black,
        title:Text('وَذَكِّرْ',style: TextStyle(color:MYColors.green,
          fontSize:30.0,
          fontStyle:FontStyle.italic,
        ),
        ),
        leading:GestureDetector(
            child: Image.asset('assets/images/photo 2.jpeg',),
         onTap:(){
        showModalBottomSheet(context: context, builder: (BuildContext context) {
        return const BottomSheetTime();
        },);

        },
        ),

        actions: [
          IconButton(onPressed:(){
            showModalBottomSheet(context: context, builder: (BuildContext context) {
              return const BottomSheetAssistant();
            },);

          }, icon: Icon(
            Icons.info_outline,size:33,color:MYColors.green,
          ),
          ),
        ],
        bottom: TabBar(
          controller:_tabController,
          indicator: PointTabIndicator(
            position:PointTabIndicatorPosition.bottom,
            color:MYColors.white,
            insets:const EdgeInsets.only(bottom:8),
          ) ,
          tabs: tablist.map((item) {
          return Tab(
            text:item,
          );
            }).toList(),
        ),
      ) ,
      body:  TabBarView(
        controller: _tabController,
        children:  [
          HomeScreen(),
          const HomeWord(),
        ],

      ) ,

    );
  }
}
