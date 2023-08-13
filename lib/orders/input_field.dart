import 'package:arnavapp/base/color_constants.dart';
import 'package:flutter/material.dart';

class InputField extends StatelessWidget{
  String hintText;
  TextInputType inputType;
  int maxLength = 0;
  TextEditingController controller;

  InputField({required this.hintText,  required this.inputType, required this.controller, this.maxLength = 50});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: inputType,
        maxLength: maxLength,
        controller: controller,
        decoration: InputDecoration(
            fillColor: Colors.white,
            filled: true,
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: ColorConstants.kDarkGreyColor)
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.lightGreen)
            ),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red)
            ),
            focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red)
            ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: ColorConstants.kGrayColor,
                fontSize: 14,
            )
        ),
        validator: (String? input) {
          if (input != null && input.isNotEmpty) {
            return null;
          }
          else {
            return "Enter valid input";
          }
        }
    );
  }
}