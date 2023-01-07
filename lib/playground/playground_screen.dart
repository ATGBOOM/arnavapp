import 'package:flutter/material.dart';

class PlaygroundScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("0"),
                Text("0"),
              ],
            ),
            Text("0"),
          ],
        ),
      ),
    );
  }

}