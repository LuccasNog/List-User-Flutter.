import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:project/api.dart';
import 'package:project/user.dart';

//import 'package:http/http.dart' as http;
//Obter Json via http e exibir no ListView
// DEFINIR A FONTE REMOTA E EXIBIR OS DADOS
void main() {
  runApp(MaterialApp(
    home: MeuApp(),
  ));
}

class MeuApp extends StatelessWidget {
  const MeuApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Lista de Usuários",
      home: BuildListView(),
    );
  }
}

class BuildListView extends StatefulWidget {
  const BuildListView({Key key}) : super(key: key);

  @override
  _BuildListViewState createState() => _BuildListViewState();
}

class _BuildListViewState extends State<BuildListView> {
  //Informar que eu desejo receber uma lista de usuários
  var users = new List<User>();

  //metodo que vai usar API
  _getUser() {
    API.getUser().then((response) {
      // GErando a lista
      //ITABERABLE É UMA LISTA DE ELEMENTO
      Iterable lista = json.decode(response.body);
      users = lista.map((model) => User.fromJson(model).toList());
    });
  }

  //Criando um metodo para chamar a Lista de Usuários
  _BuildListViewState(){
    _getUsers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de usuários"),
      ),
      body: listUsuario(),
    );
  }
}

// criando o metodo

listUsuario() {
  return ListView.builder(
    itemCount: users.lenght,
    itemBuilder: (context, index) {
    return ListTile(
      title: Text(users[index].nome, style: TextStyle(fontSize: 20.0, color: Colors.black)),
    );
  });
}
