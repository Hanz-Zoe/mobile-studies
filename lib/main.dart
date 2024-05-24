import 'package:app_api/API%20/controller/contatos_controller.dart';
import 'package:flutter/material.dart';

main(){
  runApp(MainApp());
  ContatosController cc = ContatosController();
  cc.findAll().then((list) => print(list));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

