import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/playground/playground_screen.dart';
import 'package:arnavapp/splash/splash_screen.dart';
import 'package:arnavapp/timer/timer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  String _TAG = "HomeScreen";
  final _logger = LoggerUtils();
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Umang Vaish Bespoke"),
     ),
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           Text("hello"),
           SizedBox(
             height: 20,
           ),
           ElevatedButton(
               onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context ) => TimerScreen()));
               },
               child: Text("Start Timer")
           ),
           ElevatedButton(
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context ) => PlaygroundScreen()));
               },
               child: Text("smile")
           ),
           ElevatedButton(
               onPressed: (){
                 //Navigator.push(context, MaterialPageRoute(builder: (context ) => SplashScreen()))
                 _logger.log(_TAG, "hello");
               },
               child: Text("smile")

           ),
         ],
       ),
     ),
   );
  }

}