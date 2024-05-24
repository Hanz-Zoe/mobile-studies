import 'package:project_sqlite/database/databasecollection.dart';
import 'package:sqflite/sqflite.dart';

import '../model/contato.dart';

class ContatoDao{

  Future<int> insert(Contato contato) async {
    Database db = await DatabaseConnection.getDatabaseConnection();
    Map<String, dynamic> values = Map();
    values[DatabaseConnection.coluna_nome] = contato.nome;
    values[DatabaseConnection.coluna_email] = contato.email;

    return db.insert("contatos: ", values);
  }




}