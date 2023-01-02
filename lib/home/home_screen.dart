import 'package:arnavapp/timer/timer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
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
           )
         ],
       ),
     ),
   );
  }

}