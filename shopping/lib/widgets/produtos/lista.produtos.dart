import 'package:flutter/material.dart';
import 'package:shopping/widgets/produtos/produtos.carrinho.dart';

class ListaProdutos extends StatelessWidget {
   final Axis  scrollDirection ;

  ListaProdutos({required this.scrollDirection});

  @override
  Widget build(BuildContext context) {
    return Container(
    child: ListView(
      scrollDirection: scrollDirection,
      children: [
        Produtocarrinho(titulo: "Escreva algo aqui", descricao: "Escreva algo aqui", imagem: "assets/images/product-1.png", preco: 150,
        ),
         Produtocarrinho(titulo: "Escreva algo aqui", descricao: "Escreva algo aqui", imagem: "assets/images/product-2.png", preco: 150,
        ),
         Produtocarrinho(titulo: "Escreva algo aqui", descricao: "Escreva algo aqui", imagem: "assets/images/product-3.png", preco: 150,
        ),
         Produtocarrinho(titulo: "Escreva algo aqui", descricao: "Escreva algo aqui", imagem: "assets/images/product-4.png", preco: 150,
        ),
      ],
    ),
  );
  }
}