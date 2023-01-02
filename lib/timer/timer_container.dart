import 'package:flutter/material.dart';

class TimerContainer extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.blue
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "00",
            style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.white
            ),
          ),
          Text(
            "Hours",
            style: TextStyle(
                fontSize: 16,
                color: Colors.white
            ),
          ),
        ],
      ),
    );
  }

}
