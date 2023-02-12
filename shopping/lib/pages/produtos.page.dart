import 'package:flutter/material.dart';

class PaginaProdutos extends StatelessWidget {
  final String imagem;
  final String titulo;
  final String descricao;
  final double preco;

  PaginaProdutos(
      {required this.imagem,
      required this.titulo,
      required this.descricao,
      required this.preco});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                //=>efeito sanfona
                centerTitle: true,
                background: Image.asset(
                  imagem,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            )
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                titulo,
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(descricao),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Detalhes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                  "O Nike Dri-FIT é um tecido de poliéster projetado para ajudar você a se manter seco, para que você possa trabalhar mais confortavelmente por mais tempo.."),
            ),
          ],
        ),
      ),
    );
  }
}
