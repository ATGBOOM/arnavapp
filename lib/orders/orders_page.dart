import 'package:arnavapp/base/logger_utils.dart';
import 'package:arnavapp/commonui/filled_button_widget.dart';
import 'package:arnavapp/commonui/nav_bar.dart';
import 'package:arnavapp/injector/injection.dart';
import 'package:arnavapp/orders/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../base/color_constants.dart';

class OrdersPage extends HookConsumerWidget{
  GlobalKey<FormState> _formKey = GlobalKey();
  final _logger = locator<LoggerUtils>();
  final _TAG = "order page";
   @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _nameControlller = useTextEditingController(text: "");
    final _emailControlller = useTextEditingController(text: "");
    final _numberControlller = useTextEditingController(text: "");
    return Scaffold(
      appBar: NavBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                width: double.infinity,
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Text(
                  "Add order details",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                decoration: const BoxDecoration(
                    color: ColorConstants.kRedColor,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(26),
                      bottomLeft: Radius.circular(26),
                    )
                ),
              ),

              const Padding(
                padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fill Details",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      SizedBox(height: 10,),
                      Text(
                        "By filling below form, you agree that our representative will contact you to discuss further steps on your order",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Form(
                  key: _formKey,
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        InputField(
                          hintText: "Name...",
                          inputType: TextInputType.name,
                          controller: _nameControlller,
                        ),
                        InputField(
                          hintText: "Email...",
                          inputType: TextInputType.name,
                          controller: _emailControlller,
                        ),
                        InputField(
                          hintText: "Number...",
                          inputType: TextInputType.name,
                          controller: _numberControlller,
                          maxLength: 10,
                        ),
                        Container(
                          width: 130,
                          height: 40,
                          child: FilledButtonWidget(
                            buttonText: "Confirm",
                            onButtonPress: (){

                              if(_formKey.currentState != null && _formKey.currentState!.validate()){

                              }
                            },
                          ),
                        )
                      ],
                    ),
                  )
              ),


            ],
          ),
        ),
      )
    );
  }

}