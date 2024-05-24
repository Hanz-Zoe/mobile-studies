import 'package:flutter/material.dart';
import 'package:project_sqlite/database/contato_dao.dart';
import 'package:project_sqlite/database/databasecollection.dart';
import 'package:sqflite/sqflite.dart';

import 'model/contato.dart';

main() {
  runApp(MainApp());
  ContatoDao dao = ContatoDao();
  dao.insert(Contato("A", "a@gmail.com"));
  dao.insert(Contato("b", "b@gmail.com"));


  Future<List<Contato>> findAll() async {
    Database db = await DatabaseConnection.getDatabaseConnection();
    List<Map<String, dynamic>> listMap = await db.query(DatabaseConnection.nome_tabla);

    List<Contato> listaContatos = [];
    for (Map<String, dynamic> map in listMap) {
      Contato novoContato = Contato(
          map[DatabaseConnection.coluna_nome],
          map[DatabaseConnection.coluna_email],
          id: map[DatabaseConnection.coluna_id]);
      listaContatos.add(novoContato);
    }
    return listaContatos;
  }

}

  class MainApp extends StatelessWidget {
    const MainApp({super.key});

    @override
    Widget build(BuildContext context) {
      return const Placeholder();
    }
  }

