
import 'package:arnavapp/commonui/no_internet_page.dart';
import 'package:arnavapp/routes/app_router.gr.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class FirstPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
              children: [
                Text("hello first page")
              ],
          ),
          ElevatedButton(
              onPressed: (){
                context.router.navigate(const NoInternetPageRoute());
              },
              child: Text("Start no internet page")
          )
        ],
      ),
    );
  }

}