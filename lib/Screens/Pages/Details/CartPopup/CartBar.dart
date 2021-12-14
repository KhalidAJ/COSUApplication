import 'package:cosu_app/Screens/Pages/BrowseCOSU/ComponentsRoasters/BrowseRoasters.dart';
import 'package:cosu_app/Screens/Pages/Details/CartPopup/cartList.dart';
import 'package:cosu_app/Screens/Pages/Details/components/cart_counter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_cart/flutter_cart.dart';
import 'package:pay/pay.dart';


class ShoppingCartWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var cart = FlutterCart();

    ListTile makeListTile(CartItems cartItems) => ListTile(
      contentPadding:
      EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      title: Text(
        cartItems.title,
        style: TextStyle(color: Color(0xFF643001), fontWeight: FontWeight.bold),
      ),

      subtitle: Row(
        children: <Widget>[

          Expanded(
            flex: 4,
            child: Padding(
                padding: EdgeInsets.only(left: 2.0),
                child: Text(cartItems.price.toString(),
                    style: TextStyle(color: Color(0xFF643001)))),
          )
        ],
      ),
      trailing:
      Icon(Icons.keyboard_arrow_right, color: Color(0xFF643001), size: 30.0),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => BrowseRoasters()),
        );
      },
    );



    Card makeCard(CartItems cartItems) => Card(
      elevation: 0,
      margin: new EdgeInsets.symmetric(),
      child: Container(
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage("images/Background2.png"),
                fit: BoxFit.cover,
                colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.25), BlendMode.dstATop)
            ),
            color: Colors.transparent),
        child: makeListTile(cartItems),
      ),
    );

    final makeBody = Container(
      decoration:  BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/Background2.png"),
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.3), BlendMode.dstATop),
          fit: BoxFit.cover,
        ),
      ),
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context,int index){
            return ListTile(
                leading: Image.asset("images/LogoCOSU.png", width: 35, height: 35),
                trailing:  Text(
                  'CART'
                ),
                title:Text("List item $index"),
            );
          }

      ),

    );

    return Scaffold(
      body: makeBody,
    );
  }
}

List getItems() {
  return [
    CartItems(
      title: 'PRODUCTONE',
      quantity: 4,
      price: 000,

    ),
    CartItems(
      title: 'PRODUCTTWO',
      quantity: 2,
      price: 000,

    ),
    CartItems(
      title: 'PRODUCTTHREE',
      quantity: 1,
      price: 000,

    ),
  ];
}

class CartItems {
  final String title;
  final int price, quantity;


  CartItems({
    required this.title,
    required this.price,
    required this.quantity,
  });
}