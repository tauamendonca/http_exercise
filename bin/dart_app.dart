import 'dart:io';
import 'package:dart_application_2/adicionar_post/adiciona_post.dart';
import 'package:dart_application_2/alterar_produto/alterar_produto.dart';
import 'package:dart_application_2/consultar_lista/consultar_lista.dart';
import 'package:dart_application_2/excluir_produto/excluir_produto.dart';
import 'package:dart_application_2/sair_programa/sair_programa.dart';

void main() {
  bool condicao = true;

  print('======== LISTA DE COMPRAS ==========');

  while (condicao) {
    print('''
      Escolha uma opção:
      (1) Incluir produto na lista
      (2) Consultar Lista
      (3) Alterar produto da Lista
      (4) Excluir produto da lista
      (5) Sair
    ''');

    String? comando = stdin.readLineSync();

    if (comando == '1') adicionaProduto();
    if (comando == '2') consultarLista();
    if (comando == '3') alterarProduto();
    if (comando == '4') excluirProduto();
    if (comando == '5') {
      condicao = saiPrograma();
    }
  }
}
