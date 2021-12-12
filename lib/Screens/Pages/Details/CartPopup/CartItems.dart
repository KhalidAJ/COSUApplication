class CartItemModel {
  final String id, image, title;
  final int price, quantity;


  CartItemModel({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.quantity,
  });
}

List<CartItemModel> cart = [
  CartItemModel(
id: '123',
image: 'images/LogoCOSU.png',
title: 'PRODUCTTITLE',
price: 000,
quantity: 000,
),

];


