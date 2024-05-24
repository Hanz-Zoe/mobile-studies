
import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _key = GlobalKey<FormState>(); // vai validar tudo
  TextEditingController edtName = TextEditingController();
  TextEditingController edtEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("App"),
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: Form(
          key: _key,
          child: Column(
            children: [
              TextFormField(
                controller: edtName,
                decoration:  const InputDecoration(labelText: "Name"),
                validator: (value){
                  if (value != null) {
                    if(value.isEmpty){
                      return "Nome é obrigatório";
                    }
                  return null;
                  }
                },
              ),
              TextFormField(controller: edtEmail,
                decoration:  const InputDecoration(labelText: "Email"),
                validator: (value){
                  if (value != null) {
                    if(value.isEmpty){
                      return "Email é obrigatório";
                    }
                    if(!EmailValidator.validate(value)){
                      return "informe um email valido";
                    }
                    return null;
                  }
                },)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          if(_key.currentState!.validate()){
            print("Cadastrado");
          }
        },
        child: const Icon(Icons.save),
      ),


    );
  }
}