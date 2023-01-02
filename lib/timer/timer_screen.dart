import 'package:arnavapp/timer/timer_container.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Timer Screen"),
     ),
     body: Center(
       child: Row(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         children: [
           TimerContainer(),
           TimerContainer(),
           TimerContainer(),
         ],
       )
     ),
   );
  }

}