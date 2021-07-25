import 'package:http/http.dart' as http;
//import 'package:flutter/material.dart';

//Future retornando dados como operação assincrona

const request = "https://jsonplaceholder.typicode.com";

//https://jsonplaceholder.typicode.com/users
class API {
  static Future getUser() async {
    //var url = baseUrl + "/users";
    return await http
        .get(Uri.http("https://jsonplaceholder.typicode.com", "/users"));
  }
}

// Vai retornar os dados da API no futuro
Future<Map> getApi() async {
  // Fazendo requisição assinrona
  http.Response response = await http.get(request);
  // Para chamar o JSON devemos importar a biblioteca convert
  return json.decode(response.body);
}
