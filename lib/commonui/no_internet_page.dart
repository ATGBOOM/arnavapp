
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class NoInternetPage extends StatelessWidget{
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
            Text("No Internet, Please connect to internet for shopping",
            textAlign: TextAlign.center,
            ),
          ],
        ),
      )
    );
  }

}