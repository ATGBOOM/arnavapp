import 'package:flutter/material.dart';

class ClothItemView extends StatelessWidget{
  String clothImageURL;

  ClothItemView({required this.clothImageURL});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.network(clothImageURL),
    );
  }

}