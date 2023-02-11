import 'package:flutter/material.dart';

class PaginaCarrinho extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Container(
              child: produtoLista(),
            ),
          ),
          Container(
            //=>rodape
            height: 80,
            color: Colors.black12,
            child: Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, //=> espaçamento entre os dois, um ficar de cada lado
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    left: 20,
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //=> alinhado a esquerda
                    children: <Widget>[
                      Text(
                        "TOTAL",
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "\$4250",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  margin: EdgeInsets.only(
                    right: 20,
                  ),
                  child: TextButton(
                    child: Text(
                      "Total",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget produtoLista() {
  return ListView(
    children: <Widget>[
      produtoItem(),
      produtoItem(),
      produtoItem(),
      produtoItem(),
      produtoItem(),
    ],
  );
}

Widget produtoItem() {
  return Container(
    height: 120,
    margin: EdgeInsets.all(5),
    child: Row(
      children: [
        Container(
          width: 100,
          height: 100,
          margin: EdgeInsets.all(10),
          child: Image.asset(
            "assets/images/product-1.png",
            fit: BoxFit.fitWidth,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 20,
            left: 10,
          ),
          child: Column(
            crossAxisAlignment:
                CrossAxisAlignment.start, //=> alinhar todos os itens a esquerda
            children: [
              Text("Título do produto"),
              Text(
                "\$200",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                //=> caixinha de add ou eliminar

                height: 30,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5),
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text("+"),
                        onPressed: () => {},
                      ),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: Text("1"),
                    ),
                    Container(
                      width: 40,
                      alignment: Alignment.center,
                      child: TextButton(
                        child: Text("-"),
                        onPressed: () => {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
