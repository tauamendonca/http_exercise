import 'dart:convert';

class Aluno {
  final String nome;
  final int idade;
  final double nota;

  Aluno(this.nome, this.idade, this.nota);

  factory Aluno.fromJson(Map<String, dynamic> json) {
    //ATENÇÃO: o tryParse não irá funcionar devido a tipagem.
    //Por isso é necessário criar uma validação que verifique se o conteúdo que veio da API veio com algum valor nulo
    return Aluno(json['nome'].toString(), int.parse(json['idade'].toString()),
        double.parse(json['nota'].toString()));
  }

  fromMap(mapAluno) {
    return mapAluno.map((e) => Aluno.fromJson(e)).toList();
  }
  // factory Aluno.toJson()  -> pode ser criado como método para mandar os dados para uma API
}

var jsonString = '''
  [
    {"nome": "Teste", "idade": 14, "nota": 4.0},
    {"nome": "Teste2", "idade": 12, "nota": 5.0}
  ]
''';

void main() {
  // var encoded = jsonEncode([
  //   1,
  //   2,
  //   {"a": null}
  // ]);
  // var decoded = jsonDecode('''
  //   ["foo", { "bar": 499 }]
  // ''');
  // print(encoded);
  // print(decoded);

  // List<dynamic> decoded2 = jsonDecode(jsonString);
  // print(decoded2.runtimeType);
  // List<Map<String, dynamic>> listMapa =
  //     decoded2.map((e) => jsonDecode(e) as Map<String, dynamic>).toList();

  // print(listMapa.runtimeType);
  // print(listMapa);

  // var listaDeAlunos = Map.fromIterable(
  //   decoded2,
  //   key: decoded2[0]['nome'], value: ,
  // );
  // print(listaDeAlunos.entries);

  // List<dynamic> decoded2 = jsonDecode(jsonString);

  // // Aluno aluno = Aluno.fromJson(decoded2[0]);

  // List<Aluno> listaDeAlunos = [];

  // for (var element in decoded2) {
  //   listaDeAlunos.add(Aluno.fromJson(element));
  // }

  // print('${listaDeAlunos[0].nome}, ${listaDeAlunos[1].nome}');

  // print(decoded2[1]);

  // print(aluno.nome);

  List<dynamic> decoded2 = jsonDecode(jsonString);

  List<Aluno> listaDeAlunos = decoded2.map((e) => Aluno.fromJson(e)).toList();

  print(listaDeAlunos);

  // print('${listaDeAlunos[0].nome}, ${listaDeAlunos[1].nome}');
}
