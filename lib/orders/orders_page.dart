import 'package:arnavapp/orders/input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OrdersPage extends HookConsumerWidget{
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final _nameControlller = useTextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            InputField(
                hintText: "name",
                prefillText: "Arnav Vaish",
                inputType: TextInputType.name,
                controller: _nameControlller,
            )
          ],
        ),
      ),
    );
  }

}