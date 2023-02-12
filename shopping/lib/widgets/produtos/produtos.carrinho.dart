import 'package:flutter/material.dart';
import 'package:shopping/pages/produtos.page.dart';

class Produtocarrinho extends StatelessWidget {
  final String imagem;
  final String titulo;
  final String descricao;
  final double preco;

  Produtocarrinho(
      {required this.imagem,
      required this.titulo,
      required this.descricao,
      required this.preco});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(5),
      width: 170, //=> lagura padronizado img
      color: Colors.black12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //=> GestureDetector essa linha serve para quando o cliente clicar na img ele navega para a pag de detalhes do produto
          //context precisa ser declarado dentro do  () produtoItem e do  produtoLista() e passar dentro do ()

          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => PaginaProdutos(
                            titulo: titulo,
                            descricao: descricao,
                            imagem: imagem,
                            preco: preco,
                          )));
            },
            child: Image.asset(
              imagem, //=> final String imagem;
              width: 170,
              height: 170,
              fit: BoxFit.cover, //=> padroniza todos os tamanhos das imgs
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            child: Text(
              titulo, //=> final String titulo;
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            descricao, //=> final String descricao;
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "\$ $preco", //=> final String preco;
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
