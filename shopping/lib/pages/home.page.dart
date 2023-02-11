import 'package:flutter/material.dart';
import 'package:shopping/pages/produtos.page.dart';
import 'package:shopping/widgets/buscar.dart';
import 'package:shopping/widgets/categoria/categoria.lista.dart';
import 'package:shopping/widgets/produtos/produtos.carrinho.dart';

class PaginaInicial extends StatelessWidget {
  const PaginaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color.fromARGB(255, 235, 230, 232),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 60,
            ),
            CaixaBusca(),
            SizedBox(
              height: 30,
            ),
            Text(
              'Categoria',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: CategoriaLista(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Mais vendido",
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                TextButton(
                  child: Text("Veja Todos"),
                  onPressed: () => {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: produtoLista(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget produtoLista(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: [
        Produtocarrinho(titulo: "Escreva algo aqui", descricao: "Escreva algo aqui", imagem: "", preco: 150,
        ),
         Produtocarrinho(titulo: "Escreva algo aqui", descricao: "Escreva algo aqui", imagem: "", preco: 150,
        ),
         Produtocarrinho(titulo: "Escreva algo aqui", descricao: "Escreva algo aqui", imagem: "", preco: 150,
        ),
         Produtocarrinho(titulo: "Escreva algo aqui", descricao: "Escreva algo aqui", imagem: "", preco: 150,
        ),
      ],
    ),
  );
}


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
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => PaginaProdutos()));
          },
          child: Image.asset(
            "assets/images/product-1.png",
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
            "Titulo do produto",
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
          "Marca",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "\$ 200",
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
