import 'package:flutter/material.dart';
import 'CartController.dart';
import 'CartItems.dart';


class CartItemWidget extends StatelessWidget {
  final CartItemModel cartItem;

  const CartItemWidget({required Key key, required this.cartItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
      MainAxisAlignment.center,
      children: [
        Padding(
          padding:
          const EdgeInsets.all(8.0),
          child: Image.network(
            cartItem.image,
            width: 80,
          ),
        ),
        Expanded(
            child: Wrap(
              direction: Axis.vertical,
              children: [
                Container(
                    padding: EdgeInsets.only(left: 14),
                    child: Text(
                      cartItem.title,
                    )
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.center,
                  children: [
                    IconButton(
                        icon: Icon(
                            Icons.chevron_left),
                        onPressed: () {
                          //DECREASE
                        }),
                    Padding(
                      padding:
                      const EdgeInsets.all(
                          8.0),
                      child: Text(
                        cartItem.quantity.toString(),
                      ),
                    ),
                    IconButton(
                        icon: Icon(Icons
                            .chevron_right),
                        onPressed: () {
                         //INCREASE
                        }),
                  ],
                )
              ],
            )),
        Padding(
          padding:
          const EdgeInsets.all(14),
          child: Text(
            "\$${cartItem.price}",
          ),
        ),
      ],
    );
  }
}