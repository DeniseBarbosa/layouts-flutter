import 'package:flutter/material.dart';
import 'package:shopping/widgets/categoria/categoria.item.dart';

class CategoriaLista extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          CategoriaItem(
              imagem:
                  "assets/images/Icon_Devices.png"), //=>passando img => arquivo categoria.item.dart
          CategoriaItem(
              imagem:
                  "assets/images/Icon_Gadgets.png"), //=>passando img => arquivo categoria.item.dart
          CategoriaItem(
              imagem:
                  "assets/images/Icon_Gaming.png"), //=>passando img => arquivo categoria.item.dart
          CategoriaItem(
              imagem:
                  "assets/images/Icon_Mens_Shoe.png"), //=>passando img => arquivo categoria.item.dart
          CategoriaItem(
              imagem:
                  "assets/images/Icon_Womens_Shoe.png"), //=>passando img => arquivo categoria.item.dart
        ],
      ),
    );
  }
}
