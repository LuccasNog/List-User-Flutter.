import 'package:flutter/material.dart';

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
  return ListView.builder(itemBuilder: (context, index) {
    return ListTile(
      title: Text("Minha Lista"),
    );
  });
}
