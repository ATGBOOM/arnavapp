import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/playground/playground_screen.dart';
import 'package:arnavapp/splash/splash_screen.dart';
import 'package:arnavapp/timer/timer_screen.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import '../routes/app_router.gr.dart';

class HomeScreen extends StatelessWidget{
  String _TAG = "HomeScreen";
  final _logger = LoggerUtils();
  @override
  Widget build(BuildContext context) {
   return AutoTabsScaffold(
     routes: [
       FirstPageRouter(),
       SecondPageRouter(),
       ThirdPageRouter(),
     ],
     bottomNavigationBuilder: (BuildContext context,TabsRouter tabsrouter){
       return SalomonBottomBar(
         items: [
           SalomonBottomBarItem(
               icon: Icon(Icons.import_contacts_sharp),
               title: Text("First Page")
           ),
           SalomonBottomBarItem(
               icon: Icon(Icons.import_contacts_sharp),
               title: Text("Second Page")
           ),
           SalomonBottomBarItem(
               icon: Icon(Icons.import_contacts_sharp),
               title: Text("Third Page")
           ),
         ],

       );
     },
   );
  }

}