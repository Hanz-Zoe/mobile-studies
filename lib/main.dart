import 'package:flutter/material.dart';
import 'package:project_form_file/file/FileManager.dart';
import 'package:project_form_file/view/homepage.dart';

import 'model/user.dart';


main(){
  runApp(const MainApp());
  FileManager.saveJsonList([User("A", "a@gmail.com"), User("B","b@gmail.com")]);
  FileManager.loadFromJson().then((list) => print(list));

}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: HomePage()
    );
  }
}