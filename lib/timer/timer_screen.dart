import 'dart:async';

import 'package:arnavapp/timer/timer_container.dart';
import 'package:flutter/material.dart';

class TimerScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return TimerScreenState();
  }

}

class TimerScreenState extends State<TimerScreen>{
  int secondsPassed = 0;
  int displaySeconds = 0;
  int displayMinutes = 0;
  int displayHours = 0;
  bool isTimerActive = false;
  Timer? _timer;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text("Timer Screen"),
     ),
     body: Center(
       child: Column(
         children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             children: [
               TimerContainer(timerLabel: "Hours", timerValue: displayHours.toString(),),
               TimerContainer(timerLabel: "Mins", timerValue: displayMinutes.toString(),),
               TimerContainer(timerLabel: "Secs", timerValue: displaySeconds.toString()),         ],
           ),
           ElevatedButton(
               onPressed: (){
                 if(isTimerActive == false){
                   isTimerActive = true;
                   _timer =  Timer.periodic(Duration(seconds: 1), (value) {
                     secondsPassed++;
                     displaySeconds = secondsPassed % 60;
                     displayMinutes = secondsPassed ~/ 60;
                     displayHours = secondsPassed ~/ 3600;
                     setState(() {

                     });
                   });
                 }
                 else if(isTimerActive){
                   isTimerActive = false;
                   _timer?.cancel();
                   setState(() {

                   });
                 }

               },
               child: Text(isTimerActive?"Stop":"Start")
           )
         ],
       )
     ),
   );
  }

}

