import 'package:flutter/material.dart';
import 'package:shopping/widgets/buscar.dart';
import 'package:shopping/widgets/categoria/categoria.lista.dart';
import 'package:shopping/widgets/produtos/lista.produtos.dart';

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
              child: ListaProdutos(
                  scrollDirection: Axis.horizontal), //=> lista.produtos
            ),
          ],
        ),
      ),
    );
  }
}
