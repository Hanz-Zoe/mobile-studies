import 'dart:convert';

import 'package:path_provider/path_provider.dart';
import 'dart:io';

import '../model/user.dart';



class FileManager{
  static const _file_name = "users.json";

  static Future<String> get _localPath async{
    final directory = await getApplicationSupportDirectory();
    return directory.path;
  }

  static Future<File> get _localFile async{
    final path = await _localPath;
    return File("$path/$_file_name");

  }
  static void saveJsonList(List<User> users) async{
    final file = await _localFile;
    List<Map<String, dynamic>> jsonList = [];
    for(var user in users){
      jsonList.add(user.toJson());
    }
  await file.writeAsString(jsonEncode(jsonList));
  }
  static Future<List<User>?>  loadFromJson() async{
    try {
      final file = await _localFile;
      final listString = await file.readAsString();
      final listJson = jsonDecode(listString) as List<dynamic>;
      listJson.map((json) => User.fromJson(json)).toList();
    }catch(e){
      print(e);
      return[];
    }
  }
}
