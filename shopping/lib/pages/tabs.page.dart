import 'package:flutter/material.dart';
import 'package:shopping/pages/carrinho.page.dart';
import 'package:shopping/pages/home.page.dart';
import 'package:shopping/pages/login.page.dart';

class PaginaTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [
          PaginaInicial(), //=> length: 3 => no main esta 3 => tem que ser declarado os 3
          PaginaCarrinho(), //=> length: 3 => no main esta 3 => tem que ser declarado os 3
          LoginPage(), //=> length: 3 => no main esta 3 => tem que ser declarado os 3
        ],
      ),
      //barra inferior de navegaçãpo
      //=> lembrando que as tabs segue o mesmo estilo de padronização
      //=> se tem length: 3 te´ra que ter 3 tabs e aumentar conforme a quantidade de length
      bottomNavigationBar: new TabBar(
        tabs: [
          Tab(
            icon: new Icon(Icons.home),
            //text: "Home",
            //=> pode colar um texto debaixo do icon se quiser, conforme o cod acima comentado
          ),
          Tab(
            icon: new Icon(Icons.shopping_cart),
          ),
          Tab(
            icon: new Icon(Icons.perm_identity),
          ),
        ],
        labelColor: Colors.blue, //=> selecionado ao clicar
        unselectedLabelColor: Colors.black38, //=> não selecionado 
        indicatorSize: TabBarIndicatorSize.label, //=> tracinho q fica abaixo do icon
        indicatorPadding: EdgeInsets.all(5.0),
        indicatorColor:Colors.blue,
      ),
    );
  }
}
