import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, quantity, id;
  final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.quantity,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "PRODUCTNAME",
      price: 000,
      quantity: 12,
      description: dummyText,
      image: "images/LogoCOSU.png",
      color: Color(0xFFF0D4AB)),
  Product(
      id: 2,
      title: "PRODUCTNAME",
      price: 000,
      quantity: 8,
      description: dummyText,
      image: "images/LogoCOSU.png",
      color: Color(0xFFF0D4AB)),
  Product(
      id: 3,
      title: "PRODUCTNAME",
      price: 000,
      quantity: 10,
      description: dummyText,
      image: "images/LogoCOSU.png",
      color: Color(0xFFF0D4AB)),

];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
