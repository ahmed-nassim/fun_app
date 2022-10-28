import 'package:flutter/material.dart';

import 'component/item_clothes.dart';
import 'controller.dart';

class ClothingApp extends StatefulWidget {
  const ClothingApp({Key? key}) : super(key: key);

  @override
  State<ClothingApp> createState() => _ClothingAppState();
}

class _ClothingAppState extends State<ClothingApp> {
  final controller = ProductController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(" ClothingProducts ",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.start),
      actions: const [Padding(
        padding: EdgeInsetsDirectional.only(end: 20),
        child: Icon(Icons.add_shopping_cart_sharp,color: Colors.black),
      )]),
      body: ListView.builder(
        itemBuilder: (context, index) => ItemClothes(model: controller.clothes[index] ),
        itemCount: controller.clothes.length,
      ),
    );
  }
}
