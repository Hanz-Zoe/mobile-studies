
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseConnection{

  static const nome_arquivo = "contatos";
  static const nome_tabla = "contatos";
  static const coluna_id = "id";
  static const coluna_nome = "nome";
  static const coluna_email = "email";

  static Future<Database> getDatabaseConnection() async{
    final dbPath = await getDatabasesPath();
    final String path = join(dbPath, "$nome_arquivo.db");
    return openDatabase(path, onCreate: (db, version){
      db.execute("CREATE TABLE $nome_tabla("
          "$coluna_id INTEGER PRIMARY KEY AUTOINCREMENT, "
          "$coluna_nome TEXT, "
          "$coluna_email TEXT)");
    }, version: 1);
  }
}
