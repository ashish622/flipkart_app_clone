import 'package:flutter/material.dart';

class ProductModel{
  String images;
  String name;
  int price;
  String details;

  ProductModel({required this.images, required this.name, required this.price, required this.details});
}

class SliderImage{
  final String images;
  SliderImage(this.images);
}