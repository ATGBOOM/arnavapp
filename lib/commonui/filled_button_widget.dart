import 'package:arnavapp/base/color_constants.dart';
import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget{
  String buttonText;
  VoidCallback? onButtonPress;
  FilledButtonWidget({required this.buttonText, this.onButtonPress});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
          )
        ),
            backgroundColor: MaterialStateProperty.all<Color>(ColorConstants.kRedColor),
      ),

        onPressed: (){},
        child: Text(buttonText)
    );
  }

}