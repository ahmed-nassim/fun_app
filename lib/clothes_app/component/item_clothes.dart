import 'package:flutter/material.dart';
import 'package:fun_app/clothes_app/model.dart';

class ItemClothes extends StatefulWidget {
  final product model;

  const ItemClothes({Key? key, required this.model}) : super(key: key);

  @override
  State<ItemClothes> createState() => _ItemClothesState();
}

class _ItemClothesState extends State<ItemClothes> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsetsDirectional.only(start: 12, top: 12),
      padding: const EdgeInsetsDirectional.all(10),
      width: 200,
      height: 400,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.lightBlueAccent.shade100,
      ),
      child: Column(
        children: [Align(alignment: AlignmentDirectional.topEnd,
            child: IconButton(onPressed: () {
              isLiked = !isLiked;
              setState(() {

              });
            }, icon: Icon(isLiked ? Icons.favorite : Icons.favorite_border))),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Image.network(
              widget.model.imageUrl, height: 255,

              width: double.infinity,
              fit: BoxFit.fitWidth,
            ),
          ),
          Text("-" + widget.model.name,
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
          Text(widget.model.price.toString() + "LE",
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
