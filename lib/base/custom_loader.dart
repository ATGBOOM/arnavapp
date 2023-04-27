import 'package:arnavapp/base/color_constants.dart';
import 'package:flutter/material.dart';

class CustomLoader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Center(
     child: SizedBox(
       width: 60,
       height: 60,
       child: CircularProgressIndicator(
          strokeWidth: 6,
         color: ColorConstants.kRedColor,
       ),
     ),
   );
  }

}