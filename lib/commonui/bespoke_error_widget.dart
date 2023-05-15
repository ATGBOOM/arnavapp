
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BespokeErrorWidget extends StatelessWidget{
  String? errorMessage;

  BespokeErrorWidget(this.errorMessage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
                "assets/images/no_internet.json"
            ),
            Text(errorMessage??"No Internet, Please connect to internet for shopping",
            textAlign: TextAlign.center,
            ),
          ],
        ),
      )
    );
  }

}