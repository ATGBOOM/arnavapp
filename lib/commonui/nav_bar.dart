import 'package:arnavapp/base/application_constants.dart';
import 'package:arnavapp/base/color_constants.dart';
import 'package:flutter/material.dart';

class NavBar extends  StatelessWidget implements PreferredSizeWidget{
  @override
  Widget build(BuildContext context) {

    return AppBar(
      title: IntrinsicHeight(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Umang",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                Text(
                    "",
                  style: TextStyle(
                    fontSize: 12
                  ),
                ),

              ],
            ),

            SizedBox(width: 10,),

            Container(
              width: 3,
              color: Colors.white,
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                    "Vaish",
                    style: TextStyle(
                        fontSize: 14,
                  ),
                ),
                Text(
                  "Bespoke Tailors",
                  style: TextStyle(
                    fontSize: 12,
                  ),
                )
              ],
            )
            
          ],
        ),
      ),
      elevation: 0.0,
      bottomOpacity: 0.0,
      backgroundColor: ColorConstants.kRedColor,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  
}