import 'dart:convert';

import 'package:app_api/model/contato.dart';
import 'package:http/http.dart' as http;

import '../api_contatos.dart';
class ContatosController{

  Future<List<Contato>?> findAll() async{

    try {
      final response = await http.get(Uri.parse(ApiContatos.url), headers: ApiContatos.headers);
      Map<String, dynamic> JDecode = jsonDecode(response.body);
      List<Contato> contatos = [];

      for(Map<String, dynamic> map in JDecode["contatos"]) {
        contatos.add(Contato.fromJson(map));
      }
      return contatos;
      }
    }catch(e){
    print(e);
    return null;
  }
