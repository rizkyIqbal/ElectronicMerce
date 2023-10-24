import 'package:flutter/material.dart';

class Product {
  final String imageThumbnail, title, rating, price, description, image;
  // final int price;
  final Color bgColor;

  Product(
      {required this.imageThumbnail,
      required this.image,
      required this.title,
      required this.price,
      required this.rating,
      required this.description,
      this.bgColor = const Color(0xFFEFEFF2)});
}

List<Product> demo_product = [
  Product(
    imageThumbnail: "assets/images/headset1.png",
    image: "assets/images/headsetfullblue.png",
    title: "Apple AirPods Max Wireless Over-Ear Headphones - Sky Blue",
    price: '650',
    rating: '4.5',
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in iaculis justo. Proin a ornare leo. Pellentesque semper leo nec mi facilisis, sed vulputate risus pellentesque. Mauris tempus scelerisque nunc ac consequat. Curabitur tincidunt urna nec nibh efficitur pharetra. Sed ac lorem quis ipsum volutpat mattis auctor pellentesque enim.",
    bgColor: const Color(0xFFFEFBF9),
  ),
  Product(
    imageThumbnail: "assets/images/headset1.png",
    image: "assets/images/headsetfullblue.png",
    title: "Apple AirPods Max Wireless Over-Ear Headphones",
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in iaculis justo. Proin a ornare leo. Pellentesque semper leo nec mi facilisis, sed vulputate risus pellentesque. Mauris tempus scelerisque nunc ac consequat. Curabitur tincidunt urna nec nibh efficitur pharetra. Sed ac lorem quis ipsum volutpat mattis auctor pellentesque enim.",
    price: '990',
    rating: '4.5',
  ),
  Product(
    imageThumbnail: "assets/images/headset1.png",
    image: "assets/images/headsetfullblue.png",
    title: "Apple AirPods Max Wireless Over-Ear Headphones",
    price: '180',
    rating: '4.5',
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in iaculis justo. Proin a ornare leo. Pellentesque semper leo nec mi facilisis, sed vulputate risus pellentesque. Mauris tempus scelerisque nunc ac consequat. Curabitur tincidunt urna nec nibh efficitur pharetra. Sed ac lorem quis ipsum volutpat mattis auctor pellentesque enim.",
    bgColor: const Color(0xFFF8FEFB),
  ),
  Product(
    imageThumbnail: "assets/images/headset1.png",
    image: "assets/images/headsetfullblue.png",
    title: "Apple AirPods Max Wireless Over-Ear Headphones",
    price: '149',
    rating: '4.5',
    description:
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque in iaculis justo. Proin a ornare leo. Pellentesque semper leo nec mi facilisis, sed vulputate risus pellentesque. Mauris tempus scelerisque nunc ac consequat. Curabitur tincidunt urna nec nibh efficitur pharetra. Sed ac lorem quis ipsum volutpat mattis auctor pellentesque enim.",
    bgColor: const Color(0xFFEEEEED),
  ),
];
