import 'dart:io';
import 'package:http/http.dart' as http;

import 'package:dart_application_2/utils/utils.dart';

adicionaProduto() {
  bool _condicao2 = true;
  var listaPosts = [];

  while (_condicao2) {
    print('--------------------------------------');
    print('Quantos produtos você gostaria de incluir?');

    //for (quantidade que o usuário entrar) -> get
    //modificar na pasta variables o tipo de variável listaProdutos
    //para aceitar o tipo de entrada que vem da API (criar um model)

    String? posts = stdin.readLineSync();

    var url =
        Uri.https('https://jsonplaceholder.typicode.com/posts', 'posts/$posts');

    if (posts != null && posts != '' && posts != ' ') {
      //continuar a lógica a partir daqui:
      //buscar com o get http
      //adicionar na lista

      http.get(url);

      listaPosts.add(posts);
      print('Posts adicionado corretamente');
      limpaTela();
      _condicao2 = false;
    } else {
      print('Por favor, indique um número válido');
      limpaTela();
    }
  }
}
