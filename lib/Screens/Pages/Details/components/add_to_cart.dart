import 'package:cosu_app/Screens/Pages/Details/CartPopup/CartBar.dart';
import 'package:flutter/material.dart';
import 'package:cosu_app/Screens/Models/Product.dart';
import 'package:cosu_app/Screens/pages/BrowseCOSU/BrowseConstants.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: product.color,
              ),
              onPressed: (
                  //ADD PRODUCTS TO CART ( BACK END WORK )

                  ) {
              },
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 50,
              child: FlatButton(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                color: product.color,
                onPressed: () {
                  //CART SHOWS UP
                  showBarModalBottomSheet(
                      context: context,
                      builder: (context) => Container(
                      color: Colors.white,
                      child: ShoppingCartWidget())
                  );
                },
                child: Text(
                  "Go To Cart".toUpperCase(),
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
