import 'package:flutter/material.dart';

class ClothItemView extends StatelessWidget{
  String clothImageURL;

  Function(String productSelected) onProductClicked;

  ClothItemView({required this.clothImageURL, required this.onProductClicked});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        onProductClicked(clothImageURL);
      },
      child: Container(
        padding: EdgeInsets.all(10),

        child: Card(
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(width: 0.5, color: Colors.black)),
          //borderRadius: BorderRadius.circular(18),
          child: Image.network(
            clothImageURL,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

}