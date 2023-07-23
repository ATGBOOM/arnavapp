import 'package:arnavapp/base/color_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SingleItemView extends StatelessWidget{
  String imageURL;
  int indexOfItem;
  Function(int itemSelectedIndex) onItemTapped;
  bool isItemSelected;

  SingleItemView({required this.imageURL, required this.indexOfItem, required this.onItemTapped, required this.isItemSelected});

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        onItemTapped(indexOfItem);
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: isItemSelected? ColorConstants.kRedSelectedColor: Colors.white,
        child: Image.network(imageURL,
          width: 150,
          height: 150,
          errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace){
            return SvgPicture.network(
              imageURL,
            );
          },
        ),
      ),
    );
  }

}