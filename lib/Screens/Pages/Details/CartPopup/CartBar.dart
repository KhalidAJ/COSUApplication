import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pay/pay.dart';


class ShoppingCartWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
               decoration: BoxDecoration(
                 image: DecorationImage(
                     image: AssetImage("images/Background2.png"),
                      colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.35), BlendMode.dstATop),
                   fit: BoxFit.cover,
                 ),
               ),
        ),
            SizedBox(
              height: 10,
            ),

            SizedBox(
              height: 5,
            ),

        Positioned(
            bottom: 30,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(8),
              child: ButtonBar(

              )
            ),
            ),
      ],
    );
  }
}