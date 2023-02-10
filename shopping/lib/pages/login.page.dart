import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:shopping/pages/home.page.dart';
import 'package:shopping/pages/pagina.cadastro.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            top: 80,
            left: 20,
            right: 20,
            bottom: 40,
          ),
          child: Column(
            children: [
              Container(
                height: 480,
                decoration: BoxDecoration(
                  //ele fAZ A estilização das bordas
                  color: Color.fromARGB(255, 243, 236, 236),
                  boxShadow: [
                    new BoxShadow(
                      //sombra na borda
                      color: Colors.black12, //cor da sombra da borda
                      offset: new Offset(1, 2.0),
                      blurRadius: 5,
                      spreadRadius: 1,
                    ),
                  ],
                ),
                child: Padding(
                  //=> organiza o espaçamento
                  padding: EdgeInsets.only(
                      left: 15, right: 15, top: 60), //=> organiza o espaçamento
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment
                            .spaceBetween, //=> jogar o "Seja Bem Vindo" e o "Cadastrar" e para cada canto da tela
                        children: [
                          Column(
                            children: [
                              Text(
                                'Bem Vindo', //=> fica dentro da coluna empilhado
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Text(
                                  'Entre para continuar'), //=> fica dentro da coluna empilhado
                            ],
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PaginaCadastro()));
                              },
                              child: Text(
                                  'Cadastrar')) //=> fica fora da coluna alinhado
                        ],
                      ),
                      SizedBox(
                          height:
                              60), //=> vai criar uma caixa vazia entre "Bem vindo , entre para continuar" e "E-mail" sendo assim dando um espaço entre ambos
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: "Email",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: "Senha",
                          labelStyle: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                          ),
                        ),
                        style: TextStyle(fontSize: 20),
                      ),
                      Container(
                        //=> alinhar o botão para a direita
                        height: 40,
                        alignment: Alignment.centerRight,
                        child: TextButton(
                            onPressed: () {}, child: Text("Esqueci a senha")),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: double.infinity,
                        child: TextButton(
                          style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all<Color>(Colors.blue),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5),
                              ))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PaginaInicial()));
                          },
                          child: Text(
                            'Entrar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15, bottom: 15),
                child: Text(
                  "- OU -",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(
                      width: 2.0,
                      color: Colors.blue,
                    )),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 100,
                          child: Image.asset(
                            "assets/images/facebook.png",
                          ),
                        ),
                        Text("Entre com o Facebook")
                      ],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(
                      width: 2.0,
                      color: Colors.blue,
                    )),
                child: TextButton(
                    onPressed: () {},
                    child: Row(
                      children: [
                        Container(
                          height: 24,
                          width: 100,
                          child: Image.asset(
                            "assets/images/google.png",
                          ),
                        ),
                        Text("Entre com o Google")
                      ],
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
